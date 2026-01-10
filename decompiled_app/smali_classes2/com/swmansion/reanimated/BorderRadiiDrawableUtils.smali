.class public Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;
.super Ljava/lang/Object;
.source "BorderRadiiDrawableUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBorderRadii(Landroid/view/View;)Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;
    .locals 7

    .line 25
    new-instance v6, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v0, v1}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result v1

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_TOP_LEFT_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 27
    invoke-static {p0, v0, v2}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result v3

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_TOP_RIGHT_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    .line 28
    invoke-static {p0, v0, v2}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result v4

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_BOTTOM_LEFT_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    .line 29
    invoke-static {p0, v0, v2}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result v5

    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_BOTTOM_RIGHT_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    .line 30
    invoke-static {p0, v0, v2}, Lcom/swmansion/reanimated/BorderRadiiDrawableUtils;->getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F

    move-result p0

    move-object v0, v6

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;-><init>(FFFFF)V

    return-object v6
.end method

.method private static getRadiusForCorner(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;F)F
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;)Lcom/facebook/react/uimanager/LengthPercentage;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Lcom/facebook/react/uimanager/LengthPercentage;->resolve(FF)Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result p0

    return p0
.end method
