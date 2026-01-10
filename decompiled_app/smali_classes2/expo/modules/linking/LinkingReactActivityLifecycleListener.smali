.class public final Lexpo/modules/linking/LinkingReactActivityLifecycleListener;
.super Ljava/lang/Object;
.source "LinkingReactActivityLifecycleListener.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkingReactActivityLifecycleListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkingReactActivityLifecycleListener.kt\nexpo/modules/linking/LinkingReactActivityLifecycleListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1855#2,2:28\n*S KotlinDebug\n*F\n+ 1 LinkingReactActivityLifecycleListener.kt\nexpo/modules/linking/LinkingReactActivityLifecycleListener\n*L\n24#1:28,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/linking/LinkingReactActivityLifecycleListener;",
        "Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;",
        "()V",
        "onCreate",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "onReceiveURL",
        "url",
        "Landroid/net/Uri;",
        "expo-linking_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onReceiveURL(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    sget-object v0, Lexpo/modules/linking/ExpoLinkingModule;->Companion:Lexpo/modules/linking/ExpoLinkingModule$Companion;

    invoke-virtual {v0, p1}, Lexpo/modules/linking/ExpoLinkingModule$Companion;->setInitialURL(Landroid/net/Uri;)V

    .line 24
    sget-object v0, Lexpo/modules/linking/ExpoLinkingModule;->Companion:Lexpo/modules/linking/ExpoLinkingModule$Companion;

    invoke-virtual {v0}, Lexpo/modules/linking/ExpoLinkingModule$Companion;->getOnURLReceivedObservers()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 24
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lexpo/modules/linking/LinkingReactActivityLifecycleListener;->onReceiveURL(Landroid/net/Uri;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lexpo/modules/linking/LinkingReactActivityLifecycleListener;->onReceiveURL(Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1
.end method
