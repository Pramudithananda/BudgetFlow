.class public final Lexpo/modules/ExpoReactHostFactory;
.super Ljava/lang/Object;
.source "ExpoReactHostFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoReactHostFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n1855#2,2:130\n*S KotlinDebug\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory\n*L\n97#1:128,2\n110#1:130,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/ExpoReactHostFactory;",
        "",
        "()V",
        "reactHost",
        "Lcom/facebook/react/ReactHost;",
        "createFromReactNativeHost",
        "context",
        "Landroid/content/Context;",
        "reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "ExpoReactHostDelegate",
        "expo_release"
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
.field public static final INSTANCE:Lexpo/modules/ExpoReactHostFactory;

.field private static reactHost:Lcom/facebook/react/ReactHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/ExpoReactHostFactory;

    invoke-direct {v0}, Lexpo/modules/ExpoReactHostFactory;-><init>()V

    sput-object v0, Lexpo/modules/ExpoReactHostFactory;->INSTANCE:Lexpo/modules/ExpoReactHostFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createFromReactNativeHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;)Lcom/facebook/react/ReactHost;
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactNativeHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    instance-of v0, p1, Lexpo/modules/ReactNativeHostWrapper;

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lexpo/modules/ExpoReactHostFactory;->reactHost:Lcom/facebook/react/ReactHost;

    if-nez v0, :cond_2

    .line 92
    move-object v0, p1

    check-cast v0, Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getUseDeveloperSupport()Z

    move-result v9

    .line 93
    new-instance v10, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;-><init>(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/fabric/ReactNativeConfig;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    new-instance v4, Lcom/facebook/react/fabric/ComponentFactory;

    invoke-direct {v4}, Lcom/facebook/react/fabric/ComponentFactory;-><init>()V

    .line 95
    invoke-static {v4}, Lcom/facebook/react/defaults/DefaultComponentsRegistry;->register(Lcom/facebook/react/fabric/ComponentFactory;)V

    .line 97
    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getReactNativeHostHandlers()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 128
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 98
    invoke-interface {v2, v9}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onWillCreateReactInstance(Z)V

    goto :goto_0

    .line 102
    :cond_0
    new-instance v7, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 104
    move-object v3, v10

    check-cast v3, Lcom/facebook/react/runtime/ReactHostDelegate;

    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, p0

    move v6, v9

    .line 102
    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/runtime/ReactHostImpl;-><init>(Landroid/content/Context;Lcom/facebook/react/runtime/ReactHostDelegate;Lcom/facebook/react/fabric/ComponentFactory;ZZ)V

    .line 110
    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getReactNativeHostHandlers()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 130
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 111
    invoke-virtual {v7}, Lcom/facebook/react/runtime/ReactHostImpl;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    goto :goto_1

    .line 114
    :cond_1
    new-instance p0, Lexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4;

    invoke-direct {p0, p1, v9}, Lexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4;-><init>(Lcom/facebook/react/ReactNativeHost;Z)V

    check-cast p0, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v7, p0}, Lcom/facebook/react/runtime/ReactHostImpl;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 122
    check-cast v7, Lcom/facebook/react/ReactHost;

    sput-object v7, Lexpo/modules/ExpoReactHostFactory;->reactHost:Lcom/facebook/react/ReactHost;

    .line 124
    :cond_2
    sget-object p0, Lexpo/modules/ExpoReactHostFactory;->reactHost:Lcom/facebook/react/ReactHost;

    const-string p1, "null cannot be cast to non-null type com.facebook.react.ReactHost"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You can call createFromReactNativeHost only with instances of ReactNativeHostWrapper"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
