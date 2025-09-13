.class public Lexpo/modules/adapters/react/NativeModulesProxy;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "NativeModulesProxy.java"


# static fields
.field private static final EXPORTED_METHODS_KEY:Ljava/lang/String; = "exportedMethods"

.field private static final MODULES_CONSTANTS_KEY:Ljava/lang/String; = "modulesConstants"

.field private static final NAME:Ljava/lang/String; = "NativeUnimoduleProxy"

.field private static final UNDEFINED_METHOD_ERROR:Ljava/lang/String; = "E_UNDEFINED_METHOD"

.field private static final VIEW_MANAGERS_METADATA_KEY:Ljava/lang/String; = "viewManagersMetadata"


# instance fields
.field private cachedConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mKotlinInteropModuleRegistry:Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

.field private mModuleRegistry:Lexpo/modules/core/ModuleRegistry;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;)V
    .locals 3

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 42
    iput-object p2, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    .line 44
    new-instance v0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    sget-object v1, Lexpo/modules/kotlin/ExpoModulesHelper;->Companion:Lexpo/modules/kotlin/ExpoModulesHelper$Companion;

    .line 45
    invoke-virtual {v1}, Lexpo/modules/kotlin/ExpoModulesHelper$Companion;->getModulesProvider()Lexpo/modules/kotlin/ModulesProvider;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/ModulesProvider;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p2, v2}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;-><init>(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mKotlinInteropModuleRegistry:Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;Lexpo/modules/kotlin/ModulesProvider;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 53
    iput-object p2, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    .line 55
    new-instance v0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    .line 56
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lexpo/modules/kotlin/ModulesProvider;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p3, p2, v1}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;-><init>(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mKotlinInteropModuleRegistry:Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    return-void
.end method


# virtual methods
.method public callMethod(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 107
    iget-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mKotlinInteropModuleRegistry:Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->hasModule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mKotlinInteropModuleRegistry:Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    new-instance v1, Lexpo/modules/kotlin/KPromiseWrapper;

    invoke-direct {v1, p4}, Lexpo/modules/kotlin/KPromiseWrapper;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->callMethod(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lexpo/modules/kotlin/Promise;)V

    return-void

    .line 112
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Method "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " of Java module "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is undefined."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "E_UNDEFINED_METHOD"

    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 75
    iget-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->cachedConstants:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    invoke-virtual {v0}, Lexpo/modules/core/ModuleRegistry;->ensureIsInitialized()V

    .line 81
    invoke-virtual {p0}, Lexpo/modules/adapters/react/NativeModulesProxy;->getKotlinInteropModuleRegistry()Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->installJSIInterop()V

    .line 83
    invoke-virtual {v0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->emitOnCreate()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "modulesConstants"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "exportedMethods"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mKotlinInteropModuleRegistry:Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    invoke-virtual {v1}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->viewManagersMetadata()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "viewManagersMetadata"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v1

    const-string/jumbo v2, "\u2705 Constants were exported"

    invoke-virtual {v1, v2}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 92
    iput-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->cachedConstants:Ljava/util/Map;

    return-object v0
.end method

.method public getKotlinInteropModuleRegistry()Lexpo/modules/kotlin/KotlinInteropModuleRegistry;
    .locals 1

    .line 63
    iget-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mKotlinInteropModuleRegistry:Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    return-object v0
.end method

.method getModuleRegistry()Lexpo/modules/core/ModuleRegistry;
    .locals 1

    .line 126
    iget-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "NativeUnimoduleProxy"

    return-object v0
.end method

.method getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lexpo/modules/adapters/react/NativeModulesProxy;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->invalidate()V

    .line 121
    iget-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    invoke-virtual {v0}, Lexpo/modules/core/ModuleRegistry;->onDestroy()V

    .line 122
    iget-object v0, p0, Lexpo/modules/adapters/react/NativeModulesProxy;->mKotlinInteropModuleRegistry:Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    invoke-virtual {v0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->onDestroy()V

    return-void
.end method
