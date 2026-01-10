.class public final Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "CompositeBackgroundDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompositeBackgroundDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositeBackgroundDrawable.kt\ncom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,86:1\n37#2,2:87\n37#2,2:89\n37#2,2:91\n*S KotlinDebug\n*F\n+ 1 CompositeBackgroundDrawable.kt\ncom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable\n*L\n50#1:87,2\n53#1:89,2\n54#1:91,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0000\u0018\u00002\u00020\u0001BI\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0003J\"\u0010\u001c\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;",
        "Landroid/graphics/drawable/LayerDrawable;",
        "originalBackground",
        "Landroid/graphics/drawable/Drawable;",
        "outerShadows",
        "",
        "cssBackground",
        "Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;",
        "feedbackUnderlay",
        "innerShadows",
        "(Landroid/graphics/drawable/Drawable;Ljava/util/List;Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V",
        "borderInsets",
        "Lcom/facebook/react/uimanager/style/BorderInsets;",
        "getBorderInsets",
        "()Lcom/facebook/react/uimanager/style/BorderInsets;",
        "setBorderInsets",
        "(Lcom/facebook/react/uimanager/style/BorderInsets;)V",
        "getCssBackground",
        "()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;",
        "getFeedbackUnderlay",
        "()Landroid/graphics/drawable/Drawable;",
        "getInnerShadows",
        "()Ljava/util/List;",
        "getOriginalBackground",
        "getOuterShadows",
        "withNewCssBackground",
        "withNewFeedbackUnderlay",
        "newUnderlay",
        "withNewShadows",
        "ReactAndroid_release"
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
.field private borderInsets:Lcom/facebook/react/uimanager/style/BorderInsets;

.field private final cssBackground:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

.field private final feedbackUnderlay:Landroid/graphics/drawable/Drawable;

.field private final innerShadows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final originalBackground:Landroid/graphics/drawable/Drawable;

.field private final outerShadows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;Landroid/graphics/drawable/Drawable;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "outerShadows"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerShadows"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 50
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    .line 88
    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v0, p4}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 53
    invoke-static {p5}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 90
    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 92
    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 25
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->originalBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    iput-object p2, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->outerShadows:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->cssBackground:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    .line 39
    iput-object p4, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->feedbackUnderlay:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p5, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->innerShadows:Ljava/util/List;

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->setPaddingMode(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;Landroid/graphics/drawable/Drawable;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    move-object v1, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p4

    :goto_2
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_4
    move-object p6, p5

    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v0

    .line 20
    invoke-direct/range {p1 .. p6}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getBorderInsets()Lcom/facebook/react/uimanager/style/BorderInsets;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->borderInsets:Lcom/facebook/react/uimanager/style/BorderInsets;

    return-object v0
.end method

.method public final getCssBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->cssBackground:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    return-object v0
.end method

.method public final getFeedbackUnderlay()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->feedbackUnderlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getInnerShadows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->innerShadows:Ljava/util/List;

    return-object v0
.end method

.method public final getOriginalBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->originalBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getOuterShadows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->outerShadows:Ljava/util/List;

    return-object v0
.end method

.method public final setBorderInsets(Lcom/facebook/react/uimanager/style/BorderInsets;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->borderInsets:Lcom/facebook/react/uimanager/style/BorderInsets;

    return-void
.end method

.method public final withNewCssBackground(Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;
    .locals 7

    .line 69
    new-instance v6, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    .line 70
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->originalBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->outerShadows:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->feedbackUnderlay:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->innerShadows:Ljava/util/List;

    move-object v0, v6

    move-object v3, p1

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V

    return-object v6
.end method

.method public final withNewFeedbackUnderlay(Landroid/graphics/drawable/Drawable;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;
    .locals 7

    .line 82
    new-instance v6, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    .line 83
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->originalBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->outerShadows:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->cssBackground:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    iget-object v5, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->innerShadows:Ljava/util/List;

    move-object v0, v6

    move-object v4, p1

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V

    return-object v6
.end method

.method public final withNewShadows(Ljava/util/List;Ljava/util/List;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;"
        }
    .end annotation

    const-string v0, "outerShadows"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerShadows"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    .line 78
    iget-object v2, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->originalBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->cssBackground:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    iget-object v5, p0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->feedbackUnderlay:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    move-object v3, p1

    move-object v6, p2

    .line 77
    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V

    return-object v0
.end method
