.class final Lexpo/modules/linking/ExpoLinkingModule$definition$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoLinkingModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/linking/ExpoLinkingModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/linking/ExpoLinkingModule;


# direct methods
.method constructor <init>(Lexpo/modules/linking/ExpoLinkingModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/linking/ExpoLinkingModule$definition$1$3;->this$0:Lexpo/modules/linking/ExpoLinkingModule;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lexpo/modules/linking/ExpoLinkingModule$definition$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 36
    sget-object v0, Lexpo/modules/linking/ExpoLinkingModule;->Companion:Lexpo/modules/linking/ExpoLinkingModule$Companion;

    invoke-virtual {v0}, Lexpo/modules/linking/ExpoLinkingModule$Companion;->getOnURLReceivedObservers()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lexpo/modules/linking/ExpoLinkingModule$definition$1$3;->this$0:Lexpo/modules/linking/ExpoLinkingModule;

    invoke-static {v1}, Lexpo/modules/linking/ExpoLinkingModule;->access$getOnURLReceivedObserver$p(Lexpo/modules/linking/ExpoLinkingModule;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
