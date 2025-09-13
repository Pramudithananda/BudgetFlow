.class final Lexpo/modules/kotlin/views/ExpoComposeView$layout$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoComposeView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/ExpoComposeView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/ui/platform/ComposeView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/platform/ComposeView;",
        "T",
        "Lexpo/modules/kotlin/views/ComposeProps;",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lexpo/modules/kotlin/views/ExpoComposeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/views/ExpoComposeView<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/views/ExpoComposeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/kotlin/views/ExpoComposeView<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/views/ExpoComposeView$layout$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/kotlin/views/ExpoComposeView$layout$2;->this$0:Lexpo/modules/kotlin/views/ExpoComposeView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/ui/platform/ComposeView;
    .locals 7

    .line 32
    new-instance v6, Landroidx/compose/ui/platform/ComposeView;

    iget-object v1, p0, Lexpo/modules/kotlin/views/ExpoComposeView$layout$2;->$context:Landroid/content/Context;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/ExpoComposeView$layout$2;->this$0:Lexpo/modules/kotlin/views/ExpoComposeView;

    .line 33
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v1}, Landroidx/compose/ui/platform/ComposeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    sget-object v1, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;->INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;

    check-cast v1, Landroidx/compose/ui/platform/ViewCompositionStrategy;

    invoke-virtual {v6, v1}, Landroidx/compose/ui/platform/ComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    .line 35
    move-object v1, v6

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/views/ExpoComposeView;->addView(Landroid/view/View;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ExpoComposeView$layout$2;->invoke()Landroidx/compose/ui/platform/ComposeView;

    move-result-object v0

    return-object v0
.end method
