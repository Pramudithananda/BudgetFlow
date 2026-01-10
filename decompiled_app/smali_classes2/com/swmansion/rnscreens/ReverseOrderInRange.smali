.class public final Lcom/swmansion/rnscreens/ReverseOrderInRange;
.super Lcom/swmansion/rnscreens/ChildDrawingOrderStrategyBase;
.source "ScreenStack.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\u00082\u0010\u0010\t\u001a\u000c\u0012\u0008\u0012\u00060\u000bR\u00020\u000c0\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ReverseOrderInRange;",
        "Lcom/swmansion/rnscreens/ChildDrawingOrderStrategyBase;",
        "range",
        "Lkotlin/ranges/IntRange;",
        "(Lkotlin/ranges/IntRange;)V",
        "getRange",
        "()Lkotlin/ranges/IntRange;",
        "apply",
        "",
        "drawingOperations",
        "",
        "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
        "Lcom/swmansion/rnscreens/ScreenStack;",
        "react-native-screens_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final range:Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Lkotlin/ranges/IntRange;)V
    .locals 3

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, v2, v0, v1}, Lcom/swmansion/rnscreens/ChildDrawingOrderStrategyBase;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    iput-object p1, p0, Lcom/swmansion/rnscreens/ReverseOrderInRange;->range:Lkotlin/ranges/IntRange;

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
            ">;)V"
        }
    .end annotation

    const-string v0, "drawingOperations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ReverseOrderInRange;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ReverseOrderInRange;->range:Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/swmansion/rnscreens/ReverseOrderInRange;->range:Lkotlin/ranges/IntRange;

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getEndInclusive()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 75
    invoke-static {p1, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getRange()Lkotlin/ranges/IntRange;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/swmansion/rnscreens/ReverseOrderInRange;->range:Lkotlin/ranges/IntRange;

    return-object v0
.end method
