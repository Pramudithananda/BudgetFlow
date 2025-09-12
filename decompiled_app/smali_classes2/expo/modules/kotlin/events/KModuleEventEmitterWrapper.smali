.class public final Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;
.super Lexpo/modules/kotlin/events/KEventEmitterWrapper;
.source "KModuleEventEmitterWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u001a\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0012H\u0016J\"\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0010\u0010\u000f\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0013H\u0016J(\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u0013H\u0002R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;",
        "Lexpo/modules/kotlin/events/KEventEmitterWrapper;",
        "moduleHolder",
        "Lexpo/modules/kotlin/ModuleHolder;",
        "legacyEventEmitter",
        "Lexpo/modules/core/interfaces/services/EventEmitter;",
        "reactContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V",
        "checkIfEventWasExported",
        "",
        "eventName",
        "",
        "emit",
        "eventBody",
        "Landroid/os/Bundle;",
        "Lcom/facebook/react/bridge/WritableMap;",
        "Lexpo/modules/kotlin/records/Record;",
        "",
        "emitNative",
        "",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final moduleHolder:Lexpo/modules/kotlin/ModuleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;",
            "Lexpo/modules/core/interfaces/services/EventEmitter;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "moduleHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyEventEmitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContextHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p2, p3}, Lexpo/modules/kotlin/events/KEventEmitterWrapper;-><init>(Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V

    .line 23
    iput-object p1, p0, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->moduleHolder:Lexpo/modules/kotlin/ModuleHolder;

    return-void
.end method

.method private final checkIfEventWasExported(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->moduleHolder:Lexpo/modules/kotlin/ModuleHolder;

    .line 64
    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getEventsDefinition()Lexpo/modules/kotlin/events/EventsDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lexpo/modules/kotlin/events/EventsDefinition;->getNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final emitNative(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->moduleHolder:Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->moduleHolder:Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v1}, Lexpo/modules/kotlin/ModuleHolder;->getSafeJSObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 51
    :cond_0
    :try_start_0
    sget-object v2, Lexpo/modules/kotlin/jni/JNIUtils;->Companion:Lexpo/modules/kotlin/jni/JNIUtils$Companion;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getJsiContext$expo_modules_core_release()Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object v0

    invoke-virtual {v2, v1, v0, p1, p2}, Lexpo/modules/kotlin/jni/JNIUtils$Companion;->emitEvent(Lexpo/modules/kotlin/jni/JavaScriptModuleObject;Lexpo/modules/kotlin/jni/JSIContext;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {v1}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->isValid()Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 56
    :cond_1
    throw p1
.end method


# virtual methods
.method public emit(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->checkIfEventWasExported(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 29
    invoke-static {p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->emitNative(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public emit(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->checkIfEventWasExported(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 34
    invoke-interface {p2}, Lcom/facebook/react/bridge/WritableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->emitNative(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public emit(Ljava/lang/String;Lexpo/modules/kotlin/records/Record;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->checkIfEventWasExported(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 39
    invoke-static {p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Lexpo/modules/kotlin/records/Record;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->emitNative(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public emit(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->checkIfEventWasExported(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 44
    invoke-static {p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;->emitNative(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
