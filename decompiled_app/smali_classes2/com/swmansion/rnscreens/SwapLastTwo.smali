.class public final Lcom/swmansion/rnscreens/SwapLastTwo;
.super Lcom/swmansion/rnscreens/ChildDrawingOrderStrategyBase;
.source "ScreenStack.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u00060\u0007R\u00020\u00080\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/SwapLastTwo;",
        "Lcom/swmansion/rnscreens/ChildDrawingOrderStrategyBase;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, v2, v0, v1}, Lcom/swmansion/rnscreens/ChildDrawingOrderStrategyBase;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 54
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SwapLastTwo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 58
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_1
    return-void
.end method
