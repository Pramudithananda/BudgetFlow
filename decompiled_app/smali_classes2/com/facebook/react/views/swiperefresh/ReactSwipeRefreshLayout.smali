.class public Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "ReactSwipeRefreshLayout.java"


# static fields
.field private static final DEFAULT_CIRCLE_TARGET:F = 64.0f


# instance fields
.field private mDidLayout:Z

.field private mIntercepted:Z

.field private mNativeGestureStarted:Z

.field private mPrevTouchX:F

.field private mProgressViewOffset:F

.field private mRefreshing:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    .line 26
    iput-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mRefreshing:Z

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mProgressViewOffset:F

    .line 31
    iput-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mNativeGestureStarted:Z

    .line 35
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mTouchSlop:I

    return-void
.end method

.method private shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 142
    iget v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mPrevTouchX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 144
    iget-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mIntercepted:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 145
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mIntercepted:Z

    return v1

    .line 136
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mPrevTouchX:F

    .line 137
    iput-boolean v1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mIntercepted:Z

    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0

    .line 82
    :cond_0
    invoke-super {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureStarted(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mNativeGestureStarted:Z

    .line 108
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 65
    invoke-super/range {p0 .. p5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onLayout(ZIIII)V

    .line 67
    iget-boolean p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    .line 71
    iget p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mProgressViewOffset:F

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setProgressViewOffset(F)V

    .line 72
    iget-boolean p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mRefreshing:Z

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    iget-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mNativeGestureStarted:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureEnded(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mNativeGestureStarted:Z

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public setProgressViewOffset(F)V
    .locals 3

    .line 51
    iput p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mProgressViewOffset:F

    .line 55
    iget-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getProgressCircleDiameter()I

    move-result v0

    .line 57
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v1, v0

    const/high16 v2, 0x42800000    # 64.0f

    add-float/2addr p1, v2

    .line 58
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setProgressViewOffset(ZII)V

    :cond_0
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1

    .line 40
    iput-boolean p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mRefreshing:Z

    .line 45
    iget-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method
