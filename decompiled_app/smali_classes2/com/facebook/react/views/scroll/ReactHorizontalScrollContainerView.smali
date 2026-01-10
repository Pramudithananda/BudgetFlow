.class public Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "ReactHorizontalScrollContainerView.java"


# instance fields
.field private mLayoutDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result p1

    .line 28
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public getLayoutDirection()I
    .locals 1

    .line 33
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->setAndroidLayoutDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getLayoutDirection()I

    move-result v0

    return v0

    .line 36
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mLayoutDirection:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sub-int/2addr p4, p2

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->setLeft(I)V

    .line 63
    invoke-virtual {p0, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->setTop(I)V

    .line 64
    invoke-virtual {p0, p4}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->setRight(I)V

    .line 65
    invoke-virtual {p0, p5}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->setBottom(I)V

    :cond_0
    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setRemoveClippedSubviews(Z)V

    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setRemoveClippedSubviews(Z)V

    return-void
.end method
