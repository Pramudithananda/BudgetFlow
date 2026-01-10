.class public final Lexpo/modules/linking/ExpoLinkingModule$Companion;
.super Ljava/lang/Object;
.source "ExpoLinkingModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/linking/ExpoLinkingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R.\u0010\t\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000c0\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/linking/ExpoLinkingModule$Companion;",
        "",
        "()V",
        "initialURL",
        "Landroid/net/Uri;",
        "getInitialURL",
        "()Landroid/net/Uri;",
        "setInitialURL",
        "(Landroid/net/Uri;)V",
        "onURLReceivedObservers",
        "",
        "Lkotlin/Function1;",
        "",
        "getOnURLReceivedObservers",
        "()Ljava/util/Set;",
        "setOnURLReceivedObservers",
        "(Ljava/util/Set;)V",
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
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/linking/ExpoLinkingModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInitialURL()Landroid/net/Uri;
    .locals 1

    .line 11
    invoke-static {}, Lexpo/modules/linking/ExpoLinkingModule;->access$getInitialURL$cp()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getOnURLReceivedObservers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 12
    invoke-static {}, Lexpo/modules/linking/ExpoLinkingModule;->access$getOnURLReceivedObservers$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final setInitialURL(Landroid/net/Uri;)V
    .locals 0

    .line 11
    invoke-static {p1}, Lexpo/modules/linking/ExpoLinkingModule;->access$setInitialURL$cp(Landroid/net/Uri;)V

    return-void
.end method

.method public final setOnURLReceivedObservers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lexpo/modules/linking/ExpoLinkingModule;->access$setOnURLReceivedObservers$cp(Ljava/util/Set;)V

    return-void
.end method
