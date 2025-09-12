.class public Lcom/facebook/react/views/view/ReactViewGroup;
.super Landroid/view/ViewGroup;
.source "ReactViewGroup.java"

# interfaces
.implements Lcom/facebook/react/touch/ReactInterceptingViewGroup;
.implements Lcom/facebook/react/uimanager/ReactClippingViewGroup;
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;
.implements Lcom/facebook/react/touch/ReactHitSlopView;
.implements Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;
.implements Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final DEFAULT_BACKGROUND_COLOR:I

.field private static final sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field private static final sHelperRect:Landroid/graphics/Rect;


# instance fields
.field private mAllChildren:[Landroid/view/View;

.field private mAllChildrenCount:I

.field private mBackfaceOpacity:F

.field private mBackfaceVisibility:Ljava/lang/String;

.field private mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

.field private mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

.field private mClippingRect:Landroid/graphics/Rect;

.field private mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

.field private mHitSlopRect:Landroid/graphics/Rect;

.field private mNeedsOffscreenAlphaCompositing:Z

.field private mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

.field private mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

.field private final mOverflowInset:Landroid/graphics/Rect;

.field private mPath:Landroid/graphics/Path;

.field private mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

.field private mRemoveClippedSubviews:Z


# direct methods
.method static bridge synthetic -$$Nest$mupdateSubviewClipStatus(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflowInset:Landroid/graphics/Rect;

    .line 151
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->initView()V

    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 4

    .line 800
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 801
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 802
    array-length v2, v0

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    if-ne v2, v1, :cond_0

    add-int/lit8 p2, v2, 0xc

    .line 805
    new-array p2, p2, [Landroid/view/View;

    iput-object p2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 806
    invoke-static {v0, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 809
    :cond_0
    iget p2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object p1, v0, p2

    goto :goto_1

    :cond_1
    if-ge p2, v1, :cond_3

    if-ne v2, v1, :cond_2

    add-int/lit8 v2, v2, 0xc

    .line 812
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 813
    invoke-static {v0, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v1, p2

    .line 817
    invoke-static {v0, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    :goto_0
    aput-object p1, v0, p2

    .line 820
    iget p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    :goto_1
    return-void

    .line 822
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "index="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " count="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private customDrawOrderDisabled()Z
    .locals 3

    .line 561
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private dispatchOverflowDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1043
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    .line 1046
    sget v3, Lcom/facebook/react/R$id;->filter:I

    invoke-virtual {v0, v3}, Lcom/facebook/react/views/view/ReactViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1047
    sget-object v2, Lcom/facebook/react/uimanager/style/Overflow;->HIDDEN:Lcom/facebook/react/uimanager/style/Overflow;

    .line 1050
    :cond_0
    sget-object v3, Lcom/facebook/react/views/view/ReactViewGroup$2;->$SwitchMap$com$facebook$react$uimanager$style$Overflow:[I

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/style/Overflow;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 1052
    :cond_1
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_8

    .line 1053
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    goto/16 :goto_4

    .line 1060
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 1065
    iget-object v7, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    const/4 v9, 0x0

    if-eqz v7, :cond_7

    .line 1066
    invoke-virtual {v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v7

    .line 1068
    iget v10, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v9

    if-gtz v10, :cond_4

    iget v10, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v9

    if-gtz v10, :cond_4

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v10, v10, v9

    if-gtz v10, :cond_4

    iget v10, v7, Landroid/graphics/RectF;->right:F

    cmpl-float v10, v10, v9

    if-lez v10, :cond_3

    goto :goto_0

    :cond_3
    move v10, v9

    move v11, v10

    goto :goto_1

    .line 1072
    :cond_4
    :goto_0
    iget v10, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v9

    .line 1073
    iget v11, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v9

    .line 1074
    iget v12, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v12

    .line 1075
    iget v12, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v12

    .line 1078
    :goto_1
    iget-object v12, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    .line 1079
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getComputedBorderRadius()Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    move-result-object v12

    .line 1081
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->hasRoundedBorders()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1082
    iget-object v13, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    if-nez v13, :cond_5

    .line 1083
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    iput-object v13, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    .line 1086
    :cond_5
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getTopLeft()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v13

    invoke-virtual {v13}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v13

    .line 1087
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getTopRight()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v14

    .line 1088
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getBottomLeft()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v15

    invoke-virtual {v15}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v15

    .line 1089
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getBottomRight()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v12

    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v12

    .line 1091
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 1092
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v10, v11, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1095
    invoke-virtual {v13}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v16

    iget v5, v7, Landroid/graphics/RectF;->left:F

    sub-float v5, v16, v5

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1096
    invoke-virtual {v13}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v13

    iget v8, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v8

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1097
    invoke-virtual {v14}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v13

    move/from16 v17, v2

    iget v2, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v2

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1098
    invoke-virtual {v14}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v13

    iget v14, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v14

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1099
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v14

    move/from16 v18, v6

    iget v6, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v6

    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1100
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v12

    iget v14, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v14

    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 1101
    invoke-virtual {v15}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v14

    move/from16 v19, v10

    iget v10, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v10

    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1102
    invoke-virtual {v15}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v14

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v7

    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/16 v9, 0x8

    new-array v9, v9, [F

    const/4 v14, 0x0

    aput v5, v9, v14

    const/4 v5, 0x1

    aput v8, v9, v5

    const/4 v8, 0x2

    aput v2, v9, v8

    const/4 v2, 0x3

    aput v13, v9, v2

    const/4 v2, 0x4

    aput v6, v9, v2

    const/4 v2, 0x5

    aput v12, v9, v2

    const/4 v2, 0x6

    aput v10, v9, v2

    const/4 v2, 0x7

    aput v7, v9, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 1092
    invoke-virtual {v3, v4, v9, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1105
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move/from16 v2, v17

    move/from16 v6, v18

    goto :goto_2

    :cond_6
    move/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v10

    const/4 v14, 0x0

    move v5, v14

    :goto_2
    move/from16 v9, v19

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    move v11, v9

    move v5, v14

    :goto_3
    if-nez v5, :cond_8

    .line 1111
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v9, v11, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_8
    :goto_4
    return-void
.end method

.method private getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    return-object v0
.end method

.method private handleAddView(Landroid/view/View;)V
    .locals 1

    .line 570
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 572
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->customDrawOrderDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleAddView(Landroid/view/View;)V

    .line 574
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 576
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    :goto_0
    return-void
.end method

.method private handleRemoveView(Landroid/view/View;)V
    .locals 2

    .line 581
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 583
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->customDrawOrderDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleRemoveView(Landroid/view/View;)V

    .line 588
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 590
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    :goto_0
    return-void
.end method

.method private handleRemoveViews(II)V
    .locals 1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 598
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->handleRemoveView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private indexOfChildInAllChildren(Landroid/view/View;)I
    .locals 4

    .line 789
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 790
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 792
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private initView()V
    .locals 3

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setClipChildren(Z)V

    .line 162
    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    const/4 v1, 0x0

    .line 163
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 164
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 165
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    .line 166
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mHitSlopRect:Landroid/graphics/Rect;

    .line 167
    sget-object v2, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    iput-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    .line 168
    sget-object v2, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    iput-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    .line 169
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    .line 170
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    .line 171
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    .line 172
    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    .line 173
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    .line 174
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 175
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    .line 176
    const-string/jumbo v0, "visible"

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceVisibility:Ljava/lang/String;

    return-void
.end method

.method private needsIsolatedLayer()Z
    .locals 4

    .line 840
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableAndroidMixBlendModeProp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 844
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 845
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/facebook/react/R$id;->mix_blend_mode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private removeFromArray(I)V
    .locals 4

    .line 827
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 828
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 830
    iput v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object v3, v0, v1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 832
    invoke-static {v0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    iget p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object v3, v0, p1

    :goto_0
    return-void

    .line 835
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private updateClippingToRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    .line 458
    :goto_0
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v0, v2, :cond_1

    .line 459
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    .line 460
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSubviewClipStatus(Landroid/graphics/Rect;II)V
    .locals 6

    .line 467
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 469
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    aget-object v0, v0, p2

    .line 470
    sget-object v1, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 471
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 472
    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p1

    .line 481
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 486
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    sub-int/2addr p2, p3

    .line 489
    sget-object p1, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, p2, p1, v2}, Lcom/facebook/react/views/view/ReactViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 490
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 497
    :goto_1
    instance-of p1, v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz p1, :cond_3

    .line 500
    check-cast v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    .line 501
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->getRemoveClippedSubviews()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 502
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->updateClippingRect()V

    :cond_3
    return-void
.end method

.method private updateSubviewClipStatus(Landroid/view/View;)V
    .locals 5

    .line 509
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 518
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 519
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eq v0, v1, :cond_4

    move v0, v2

    .line 527
    :goto_1
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v2, v1, :cond_4

    .line 528
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_2

    .line 529
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    goto :goto_2

    .line 532
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 607
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->handleAddView(Landroid/view/View;)V

    .line 608
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->handleAddView(Landroid/view/View;)V

    .line 615
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p1

    return p1
.end method

.method addViewWithSubviewClippingEnabled(Landroid/view/View;I)V
    .locals 1

    .line 713
    sget-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->addViewWithSubviewClippingEnabled(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method addViewWithSubviewClippingEnabled(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 718
    iget-boolean p3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 719
    iget-object p3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object p3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->addInArray(Landroid/view/View;I)V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge p3, p2, :cond_1

    .line 726
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 730
    :cond_1
    iget-object p3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    .line 731
    iget-object p2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 733
    instance-of p2, p1, Lcom/facebook/react/uimanager/ReactClippingProhibitedView;

    if-eqz p2, :cond_2

    .line 734
    new-instance p2, Lcom/facebook/react/views/view/ReactViewGroup$1;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup$1;-><init>(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;)V

    invoke-static {p2}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 977
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    sget-object v1, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/facebook/react/R$id;->filter:I

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 979
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->clipToPaddingBox(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 981
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 986
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->dispatchOverflowDraw(Landroid/graphics/Canvas;)V

    .line 987
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 991
    :goto_0
    invoke-static {p0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 993
    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/RootView;->handleException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 995
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_4

    .line 996
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 997
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v2, "StackOverflowException"

    invoke-direct {v1, v2, p0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/Exception;)V

    :goto_1
    return-void

    .line 1000
    :cond_4
    throw p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-static {v0}, Lcom/facebook/react/uimanager/PointerEvents;->canChildrenBeTouchTarget(Lcom/facebook/react/uimanager/PointerEvents;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 319
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 2

    .line 232
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchProvideStructure(Landroid/view/ViewStructure;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 234
    const-string v0, "ReactNative"

    const-string v1, "NullPointerException when executing dispatchProvideStructure"

    invoke-static {v0, v1, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 954
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 955
    invoke-static {p0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 956
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->needsIsolatedLayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOverflowInset()Landroid/graphics/Rect;

    move-result-object v0

    .line 962
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    .line 965
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    add-int/2addr v1, v2

    int-to-float v5, v1

    .line 966
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    add-int/2addr v1, v0

    int-to-float v6, v1

    const/4 v7, 0x0

    move-object v2, p1

    .line 962
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 968
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 969
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 971
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 1008
    invoke-virtual {p2}, Landroid/view/View;->getElevation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 1011
    invoke-static {p1, v1}, Lcom/facebook/react/views/view/CanvasUtil;->enableZ(Landroid/graphics/Canvas;Z)V

    .line 1015
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_2

    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->needsIsolatedLayer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1016
    sget v1, Lcom/facebook/react/R$id;->mix_blend_mode:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BlendMode;

    if-eqz v1, :cond_3

    .line 1018
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1019
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 1020
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOverflowInset()Landroid/graphics/Rect;

    move-result-object v3

    .line 1021
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 1024
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getWidth()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->right:I

    neg-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 1025
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getHeight()I

    move-result v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    add-int/2addr v7, v3

    int-to-float v7, v7

    move-object v3, p1

    .line 1021
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1030
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v1, :cond_4

    .line 1033
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    if-eqz v0, :cond_5

    .line 1037
    invoke-static {p1, v2}, Lcom/facebook/react/views/view/CanvasUtil;->enableZ(Landroid/graphics/Canvas;Z)V

    :cond_5
    return p2
.end method

.method getAllChildrenCount()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 2
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 855
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 856
    invoke-static {p0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->getBackgroundColor(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    .line 859
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 860
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getColor()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method getChildAtWithSubviewClippingEnabled(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_0

    .line 707
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge p1, v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 650
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 652
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->customDrawOrderDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 0

    .line 541
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    return p1
.end method

.method public getClippingRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getHitSlopRect()Landroid/graphics/Rect;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mHitSlopRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;
    .locals 5

    .line 867
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    if-nez v0, :cond_1

    .line 868
    new-instance v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    .line 869
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 870
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 876
    :cond_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 878
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 880
    :goto_0
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->setAndroidLayoutDirection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    .line 882
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v1

    .line 881
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setLayoutDirectionOverride(I)V

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    return-object v0
.end method

.method public getOverflow()Ljava/lang/String;
    .locals 2

    .line 912
    sget-object v0, Lcom/facebook/react/views/view/ReactViewGroup$2;->$SwitchMap$com$facebook$react$uimanager$style$Overflow:[I

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/Overflow;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 918
    :cond_0
    const-string/jumbo v0, "visible"

    return-object v0

    .line 916
    :cond_1
    const-string v0, "scroll"

    return-object v0

    .line 914
    :cond_2
    const-string v0, "hidden"

    return-object v0
.end method

.method public getOverflowInset()Landroid/graphics/Rect;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflowInset:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    return-object v0
.end method

.method public getRemoveClippedSubviews()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    return v0
.end method

.method public getZIndexMappedChildIndex(I)I
    .locals 2

    .line 661
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 663
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->customDrawOrderDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->getChildDrawingOrder(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 554
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 555
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/touch/OnInterceptTouchEventListener;->onInterceptTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-static {v0}, Lcom/facebook/react/uimanager/PointerEvents;->canChildrenBeTouchTarget(Lcom/facebook/react/uimanager/PointerEvents;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 295
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 210
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MeasureSpecAssertions;->assertExplicitMeasureSpec(II)V

    .line 213
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 546
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 547
    iget-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 301
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-static {p1}, Lcom/facebook/react/uimanager/PointerEvents;->canBeTouchTarget(Lcom/facebook/react/uimanager/PointerEvents;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method recycleView()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 182
    :goto_0
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v0, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->initView()V

    .line 189
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflowInset:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 190
    sget-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 193
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->resetPointerEvents()V

    return-void
.end method

.method removeAllViewsWithSubviewClippingEnabled()V
    .locals 4

    .line 779
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 780
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    .line 781
    :goto_0
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v1, v2, :cond_0

    .line 782
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->removeAllViewsInLayout()V

    .line 785
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->handleRemoveView(Landroid/view/View;)V

    .line 621
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 626
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->handleRemoveView(Landroid/view/View;)V

    .line 627
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .line 632
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->handleRemoveView(Landroid/view/View;)V

    .line 633
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method removeViewWithSubviewClippingEnabled(Landroid/view/View;)V
    .locals 3

    .line 758
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 760
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 761
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 764
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->indexOfChildInAllChildren(Landroid/view/View;)I

    move-result p1

    .line 765
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 768
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, p1, v1

    const/4 v1, 0x1

    .line 772
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeViewsInLayout(II)V

    .line 773
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 775
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeFromArray(I)V

    return-void
.end method

.method public removeViews(II)V
    .locals 0

    .line 644
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->handleRemoveViews(II)V

    .line 645
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 638
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->handleRemoveViews(II)V

    .line 639
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    return-void
.end method

.method resetPointerEvents()V
    .locals 1

    .line 698
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    return-void
.end method

.method public setBackfaceVisibility(Ljava/lang/String;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceVisibility:Ljava/lang/String;

    .line 1126
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibilityDependantOpacity()V

    return-void
.end method

.method public setBackfaceVisibilityDependantOpacity()V
    .locals 4

    .line 1130
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceVisibility:Ljava/lang/String;

    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setAlpha(F)V

    return-void

    .line 1137
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getRotationX()F

    move-result v0

    .line 1138
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getRotationY()F

    move-result v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    const/high16 v3, 0x42b40000    # 90.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    cmpg-float v0, v1, v3

    if-gez v0, :cond_1

    .line 1144
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setAlpha(F)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1148
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setAlpha(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 240
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    if-nez v0, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setColor(I)V

    :goto_0
    return-void
.end method

.method setBackgroundImage(Ljava/util/List;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/UnstableReactNativeAPI;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/style/BackgroundImageLayer;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundImage(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBackgroundImage(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setBorderColor(ILjava/lang/Integer;)V
    .locals 1

    .line 346
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-static {p0, p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderColor(ILjava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.75.0"
    .end annotation

    .line 358
    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setBorderRadius(FI)V

    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.75.0"
    .end annotation

    .line 366
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/LengthPercentage;

    sget-object v1, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v0, p1, v1}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    move-object p1, v0

    .line 372
    :goto_0
    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-static {p0, p2, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    goto :goto_1

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setRadius(FI)V

    :goto_1
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V
    .locals 1

    .line 379
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {p0, p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    :goto_0
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1

    .line 388
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 390
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/style/BorderStyle;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object p1

    .line 389
    :goto_0
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V

    goto :goto_1

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderStyle(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .line 337
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 338
    invoke-static {p0, p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderWidth(IF)V

    :goto_0
    return-void
.end method

.method public setHitSlopRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mHitSlopRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setNeedsOffscreenAlphaCompositing(Z)V
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    return-void
.end method

.method public setOnInterceptTouchEventListener(Lcom/facebook/react/touch/OnInterceptTouchEventListener;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    return-void
.end method

.method public setOpacityIfPossible(F)V
    .locals 0

    .line 1120
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    .line 1121
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibilityDependantOpacity()V

    return-void
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 901
    sget-object p1, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    goto :goto_0

    .line 903
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/style/Overflow;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/Overflow;

    move-result-object p1

    if-nez p1, :cond_1

    .line 904
    sget-object p1, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    :cond_1
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    .line 907
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    return-void
.end method

.method public setOverflowInset(IIII)V
    .locals 1

    .line 926
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->needsIsolatedLayer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflowInset:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflowInset:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflowInset:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflowInset:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v0, p4, :cond_1

    .line 931
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflowInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 4

    .line 398
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 401
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 403
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    .line 404
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 405
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    const/16 v2, 0xc

    .line 406
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 407
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 408
    new-instance p1, Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-direct {p1, p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;-><init>(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener-IA;)V

    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    .line 409
    :goto_0
    iget p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v0, p1, :cond_1

    .line 410
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 411
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aput-object p1, v1, v0

    .line 412
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    goto :goto_2

    .line 417
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    .line 420
    :goto_1
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge p1, v2, :cond_3

    .line 421
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 423
    :cond_3
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 424
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingToRect(Landroid/graphics/Rect;)V

    .line 425
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 426
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    .line 427
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 428
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    :goto_2
    return-void
.end method

.method public setTranslucentBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.76.0"
    .end annotation

    .line 262
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setFeedbackUnderlay(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 271
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mCSSBackgroundDrawable:Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateClippingRect()V
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 452
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingToRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateDrawingOrder()V
    .locals 1

    .line 673
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->customDrawOrderDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 677
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->update()V

    .line 678
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingOrderHelper()Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 679
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    return-void
.end method
