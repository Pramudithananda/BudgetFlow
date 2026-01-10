.class public final Lcom/facebook/react/uimanager/BackgroundStyleApplicator;
.super Ljava/lang/Object;
.source "BackgroundStyleApplicator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0017\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0010\u000fJ\u001f\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0007\u00a2\u0006\u0002\u0010\u0013J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001f\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0007\u00a2\u0006\u0002\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J!\u0010 \u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0001\u0010!\u001a\u0004\u0018\u00010\u000eH\u0007\u00a2\u0006\u0002\u0010\"J \u0010#\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%H\u0007J)\u0010\'\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\n\u0008\u0001\u0010!\u001a\u0004\u0018\u00010\u000eH\u0007\u00a2\u0006\u0002\u0010(J\"\u0010)\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010*\u001a\u0004\u0018\u00010\u0015H\u0007J\u001a\u0010+\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010,\u001a\u0004\u0018\u00010\u0019H\u0007J\'\u0010-\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010.\u001a\u0004\u0018\u00010\u001bH\u0007\u00a2\u0006\u0002\u0010/J\u001a\u00100\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u00101\u001a\u0004\u0018\u000102H\u0007J\u001e\u00100\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002030%H\u0007J\u001a\u00104\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u00105\u001a\u0004\u0018\u000106H\u0007\u00a8\u00067"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/BackgroundStyleApplicator;",
        "",
        "()V",
        "clipToPaddingBox",
        "",
        "view",
        "Landroid/view/View;",
        "canvas",
        "Landroid/graphics/Canvas;",
        "ensureCSSBackground",
        "Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;",
        "ensureCompositeBackgroundDrawable",
        "Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;",
        "getBackgroundColor",
        "",
        "(Landroid/view/View;)Ljava/lang/Integer;",
        "getBorderColor",
        "edge",
        "Lcom/facebook/react/uimanager/style/LogicalEdge;",
        "(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;)Ljava/lang/Integer;",
        "getBorderRadius",
        "Lcom/facebook/react/uimanager/LengthPercentage;",
        "corner",
        "Lcom/facebook/react/uimanager/style/BorderRadiusProp;",
        "getBorderStyle",
        "Lcom/facebook/react/uimanager/style/BorderStyle;",
        "getBorderWidth",
        "",
        "(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;)Ljava/lang/Float;",
        "getCSSBackground",
        "getCompositeBackgroundDrawable",
        "reset",
        "setBackgroundColor",
        "color",
        "(Landroid/view/View;Ljava/lang/Integer;)V",
        "setBackgroundImage",
        "backgroundImageLayers",
        "",
        "Lcom/facebook/react/uimanager/style/BackgroundImageLayer;",
        "setBorderColor",
        "(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V",
        "setBorderRadius",
        "radius",
        "setBorderStyle",
        "borderStyle",
        "setBorderWidth",
        "width",
        "(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V",
        "setBoxShadow",
        "shadows",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "Lcom/facebook/react/uimanager/style/BoxShadow;",
        "setFeedbackUnderlay",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
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


# static fields
.field public static final INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clipToPaddingBox(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 211
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 213
    sget-object v1, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v1, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 215
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getPaddingBoxPath()Landroid/graphics/Path;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 221
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 222
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getPaddingBoxRect()Landroid/graphics/RectF;

    move-result-object p0

    const-string v1, "getPaddingBoxRect(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 226
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :goto_0
    return-void
.end method

.method private final ensureCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;
    .locals 3

    .line 251
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCompositeBackgroundDrawable(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getCssBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getCssBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p1

    return-object p1

    .line 255
    :cond_0
    new-instance v1, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->withNewCssBackground(Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private final ensureCompositeBackgroundDrawable(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;
    .locals 9

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.facebook.react.uimanager.drawable.CompositeBackgroundDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    return-object p1

    .line 242
    :cond_0
    new-instance v8, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;Landroid/graphics/drawable/Drawable;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 243
    move-object v0, v8

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v8
.end method

.method public static final getBackgroundColor(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final getBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/style/LogicalEdge;->toSpacingType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final getBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;)Lcom/facebook/react/uimanager/LengthPercentage;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "corner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderRadius()Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->get(Lcom/facebook/react/uimanager/style/BorderRadiusProp;)Lcom/facebook/react/uimanager/LengthPercentage;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final getBorderStyle(Landroid/view/View;)Lcom/facebook/react/uimanager/style/BorderStyle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderStyle()Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final getBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;)Ljava/lang/Float;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/style/LogicalEdge;->toSpacingType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidth(I)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 86
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/PixelUtil;->pxToDp(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final getCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getCompositeBackgroundDrawable(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getCssBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getCompositeBackgroundDrawable(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;
    .locals 1

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static final reset(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.drawable.CompositeBackgroundDrawable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getOriginalBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static final setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    if-nez v0, :cond_1

    return-void

    .line 52
    :cond_1
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setColor(I)V

    return-void
.end method

.method public static final setBackgroundImage(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/style/BackgroundImageLayer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBackgroundImage(Ljava/util/List;)V

    return-void
.end method

.method public static final setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/style/LogicalEdge;->toSpacingType()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderColor(ILjava/lang/Integer;)V

    return-void
.end method

.method public static final setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V
    .locals 23
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "view"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "corner"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v3, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v3, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 105
    invoke-direct {v3, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCompositeBackgroundDrawable(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object v0

    .line 107
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_3

    .line 108
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getOuterShadows()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 109
    instance-of v5, v4, Lcom/facebook/react/uimanager/drawable/OutsetBoxShadowDrawable;

    if-eqz v5, :cond_0

    .line 110
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/uimanager/drawable/OutsetBoxShadowDrawable;

    invoke-virtual {v5}, Lcom/facebook/react/uimanager/drawable/OutsetBoxShadowDrawable;->getBorderRadius()Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    const/16 v21, 0x1fff

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v22}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;-><init>(Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    invoke-virtual {v5, v6}, Lcom/facebook/react/uimanager/drawable/OutsetBoxShadowDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusStyle;)V

    .line 111
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/drawable/OutsetBoxShadowDrawable;->getBorderRadius()Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v1, v2}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->set(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 112
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 117
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_7

    .line 118
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getInnerShadows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 119
    instance-of v4, v3, Lcom/facebook/react/uimanager/drawable/InsetBoxShadowDrawable;

    if-eqz v4, :cond_4

    .line 120
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/uimanager/drawable/InsetBoxShadowDrawable;

    invoke-virtual {v4}, Lcom/facebook/react/uimanager/drawable/InsetBoxShadowDrawable;->getBorderRadius()Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    const/16 v20, 0x1fff

    const/16 v21, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v21}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;-><init>(Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;Lcom/facebook/react/uimanager/LengthPercentage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_5
    invoke-virtual {v4, v5}, Lcom/facebook/react/uimanager/drawable/InsetBoxShadowDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusStyle;)V

    .line 121
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/drawable/InsetBoxShadowDrawable;->getBorderRadius()Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4, v1, v2}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->set(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 122
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static final setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderStyle(Lcom/facebook/react/uimanager/style/BorderStyle;)V

    return-void
.end method

.method public static final setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/style/LogicalEdge;->toSpacingType()I

    move-result v2

    if-eqz p2, :cond_0

    sget-object v3, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x7fc00000    # Float.NaN

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderWidth(IF)V

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    .line 72
    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCompositeBackgroundDrawable(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getBorderInsets()Lcom/facebook/react/uimanager/style/BorderInsets;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/facebook/react/uimanager/style/BorderInsets;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/style/BorderInsets;-><init>()V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->setBorderInsets(Lcom/facebook/react/uimanager/style/BorderInsets;)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getBorderInsets()Lcom/facebook/react/uimanager/style/BorderInsets;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/style/BorderInsets;->setBorderWidth(Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getInnerShadows()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 77
    const-string v0, "null cannot be cast to non-null type com.facebook.react.uimanager.drawable.InsetBoxShadowDrawable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/facebook/react/uimanager/drawable/InsetBoxShadowDrawable;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getBorderInsets()Lcom/facebook/react/uimanager/style/BorderInsets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/drawable/InsetBoxShadowDrawable;->setBorderInsets(Lcom/facebook/react/uimanager/style/BorderInsets;)V

    .line 78
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static final setBoxShadow(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 191
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBoxShadow(Landroid/view/View;Ljava/util/List;)V

    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 196
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 197
    sget-object v3, Lcom/facebook/react/uimanager/style/BoxShadow;->Companion:Lcom/facebook/react/uimanager/style/BoxShadow$Companion;

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/react/uimanager/style/BoxShadow$Companion;->parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/uimanager/style/BoxShadow;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_2
    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBoxShadow(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public static final setBoxShadow(Landroid/view/View;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/style/BoxShadow;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadows"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {p0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 149
    sget-object v2, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v2, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCompositeBackgroundDrawable(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->getBorderInsets()Lcom/facebook/react/uimanager/style/BorderInsets;

    move-result-object v2

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/style/BoxShadow;

    .line 152
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/BoxShadow;->getOffsetX()F

    move-result v8

    .line 153
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/BoxShadow;->getOffsetY()F

    move-result v9

    .line 154
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/BoxShadow;->getColor()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_2
    const/high16 v4, -0x1000000

    :goto_1
    move v7, v4

    .line 155
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/BoxShadow;->getBlurRadius()Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v5

    .line 156
    :goto_2
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/BoxShadow;->getSpreadDistance()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v11, v4

    goto :goto_3

    :cond_4
    move v11, v5

    .line 157
    :goto_3
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/BoxShadow;->getInset()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 159
    :goto_4
    const-string v4, "getContext(...)"

    if-eqz v3, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_6

    .line 161
    new-instance v12, Lcom/facebook/react/uimanager/drawable/InsetBoxShadowDrawable;

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v3, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v3, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderRadius()Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    move-result-object v6

    move-object v3, v12

    move-object v4, v5

    move-object v5, v6

    move-object v6, v2

    .line 161
    invoke-direct/range {v3 .. v11}, Lcom/facebook/react/uimanager/drawable/InsetBoxShadowDrawable;-><init>(Landroid/content/Context;Lcom/facebook/react/uimanager/style/BorderRadiusStyle;Lcom/facebook/react/uimanager/style/BorderInsets;IFFFF)V

    .line 160
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-nez v3, :cond_1

    .line 170
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_1

    .line 172
    new-instance v3, Lcom/facebook/react/uimanager/drawable/OutsetBoxShadowDrawable;

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v4, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v4, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCSSBackground(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderRadius()Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    move-result-object v6

    move-object v4, v3

    .line 172
    invoke-direct/range {v4 .. v11}, Lcom/facebook/react/uimanager/drawable/OutsetBoxShadowDrawable;-><init>(Landroid/content/Context;Lcom/facebook/react/uimanager/style/BorderRadiusStyle;IFFFF)V

    .line 171
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 184
    :cond_7
    sget-object p1, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {p1, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCompositeBackgroundDrawable(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object p1

    .line 185
    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->withNewShadows(Ljava/util/List;Ljava/util/List;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final setFeedbackUnderlay(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->INSTANCE:Lcom/facebook/react/uimanager/BackgroundStyleApplicator;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->ensureCompositeBackgroundDrawable(Landroid/view/View;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;->withNewFeedbackUnderlay(Landroid/graphics/drawable/Drawable;)Lcom/facebook/react/uimanager/drawable/CompositeBackgroundDrawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
