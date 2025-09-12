.class public abstract Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.super Ljava/lang/Object;
.source "BaseViewManagerDelegate.kt"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u000e\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0007J)\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0002\u0010\u0010J)\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0002\u0010\u0015R\u0012\u0010\u0006\u001a\u00028\u00018\u0004X\u0085\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate;",
        "T",
        "Landroid/view/View;",
        "U",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface;",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "mViewManager",
        "(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface;",
        "receiveCommand",
        "",
        "view",
        "commandName",
        "",
        "args",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V",
        "setProperty",
        "propName",
        "value",
        "",
        "(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V",
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
.field protected final mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    const-string v0, "mViewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    return-void
.end method


# virtual methods
.method public receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2f

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "nativeID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setNativeId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :sswitch_1
    const-string v0, "accessibilityCollectionItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 41
    :cond_1
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setAccessibilityCollectionItem(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_2

    .line 26
    :sswitch_2
    const-string v0, "accessibilityLabelledBy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_2

    .line 79
    :cond_2
    new-instance p2, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {p2, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lcom/facebook/react/bridge/Dynamic;

    .line 80
    iget-object p3, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setAccessibilityLabelledBy(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_2

    .line 26
    :sswitch_3
    const-string v0, "accessibilityCollection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_2

    .line 38
    :cond_3
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setAccessibilityCollection(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_2

    .line 26
    :sswitch_4
    const-string v0, "accessibilityActions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_2

    .line 28
    :cond_4
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setAccessibilityActions(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_2

    .line 26
    :sswitch_5
    const-string v0, "borderRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_2

    .line 48
    :cond_5
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    .line 49
    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v3, v0

    .line 48
    :cond_6
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setBorderRadius(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_6
    const-string v0, "backgroundColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_2

    .line 44
    :cond_7
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    if-nez p3, :cond_8

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 44
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setBackgroundColor(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 26
    :sswitch_7
    const-string v0, "accessibilityState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_2

    .line 36
    :cond_9
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setViewState(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_2

    .line 26
    :sswitch_8
    const-string v0, "accessibilityLabel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_2

    .line 31
    :cond_a
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :sswitch_9
    const-string v0, "transform"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_2

    .line 95
    :cond_b
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_2

    .line 26
    :sswitch_a
    const-string v0, "importantForAccessibility"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_2

    .line 74
    :cond_c
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :sswitch_b
    const-string v0, "borderBottomRightRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_2

    .line 56
    :cond_d
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    .line 57
    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v3, v0

    .line 56
    :cond_e
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setBorderBottomRightRadius(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_c
    const-string v0, "borderBottomLeftRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_2

    .line 52
    :cond_f
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    .line 53
    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_10

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v3, v0

    .line 52
    :cond_10
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setBorderBottomLeftRadius(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_d
    const-string v0, "borderTopRightRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_2

    .line 64
    :cond_11
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    .line 65
    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v3, v0

    .line 64
    :cond_12
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setBorderTopRightRadius(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_e
    const-string v0, "accessibilityLiveRegion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_2

    .line 33
    :cond_13
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :sswitch_f
    const-string v0, "role"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_2

    .line 76
    :cond_14
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setRole(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :sswitch_10
    const-string v0, "elevation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_2

    .line 67
    :cond_15
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_16

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v4, v0

    :cond_16
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setElevation(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_11
    const-string v0, "rotation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_2

    .line 88
    :cond_17
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v4, v0

    :cond_18
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setRotation(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_12
    const-string v0, "renderToHardwareTextureAndroid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_2

    .line 86
    :cond_19
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_1a
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setRenderToHardwareTexture(Landroid/view/View;Z)V

    goto/16 :goto_2

    .line 26
    :sswitch_13
    const-string v0, "accessibilityRole"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto/16 :goto_2

    .line 35
    :cond_1b
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setAccessibilityRole(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :sswitch_14
    const-string v0, "accessibilityHint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto/16 :goto_2

    .line 30
    :cond_1c
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setAccessibilityHint(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :sswitch_15
    const-string/jumbo v0, "zIndex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto/16 :goto_2

    .line 103
    :cond_1d
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v4, v0

    :cond_1e
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setZIndex(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_16
    const-string v0, "transformOrigin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto/16 :goto_2

    .line 96
    :cond_1f
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setTransformOrigin(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_2

    .line 26
    :sswitch_17
    const-string v0, "testID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    goto/16 :goto_2

    .line 94
    :cond_20
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setTestId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :sswitch_18
    const-string v0, "scaleY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto/16 :goto_2

    .line 92
    :cond_21
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_22

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v1, v0

    :cond_22
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setScaleY(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_19
    const-string v0, "scaleX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    goto/16 :goto_2

    .line 90
    :cond_23
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_24

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v1, v0

    :cond_24
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setScaleX(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_1a
    const-string v0, "borderTopLeftRadius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    goto/16 :goto_2

    .line 60
    :cond_25
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    .line 61
    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_26

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v3, v0

    .line 60
    :cond_26
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setBorderTopLeftRadius(Landroid/view/View;F)V

    goto/16 :goto_2

    .line 26
    :sswitch_1b
    const-string v0, "opacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_2

    .line 83
    :cond_27
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_28

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v1, v0

    :cond_28
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setOpacity(Landroid/view/View;F)V

    goto :goto_2

    .line 26
    :sswitch_1c
    const-string v0, "shadowColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    goto :goto_2

    .line 70
    :cond_29
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    if-nez p3, :cond_2a

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_1

    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    :goto_1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 70
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setShadowColor(Landroid/view/View;I)V

    goto :goto_2

    .line 26
    :sswitch_1d
    const-string v0, "translateY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2b

    goto :goto_2

    .line 101
    :cond_2b
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_2c

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v4, v0

    :cond_2c
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setTranslateY(Landroid/view/View;F)V

    goto :goto_2

    .line 26
    :sswitch_1e
    const-string v0, "translateX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2d

    goto :goto_2

    .line 98
    :cond_2d
    iget-object p2, p0, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p3, Ljava/lang/Double;

    if-eqz p3, :cond_2e

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v4, v0

    :cond_2e
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/uimanager/BaseViewManagerInterface;->setTranslateX(Landroid/view/View;F)V

    :cond_2f
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66a2c736 -> :sswitch_1e
        -0x66a2c735 -> :sswitch_1d
        -0x5ec185dd -> :sswitch_1c
        -0x4b8807f5 -> :sswitch_1b
        -0x4932ce1e -> :sswitch_1a
        -0x3621dfb2 -> :sswitch_19
        -0x3621dfb1 -> :sswitch_18
        -0x34488ed3 -> :sswitch_17
        -0x2e963a4e -> :sswitch_16
        -0x2b988b88 -> :sswitch_15
        -0x60f430b -> :sswitch_14
        -0x60aa11c -> :sswitch_13
        -0x4d24f13 -> :sswitch_12
        -0x266f082 -> :sswitch_11
        -0x42d1a3 -> :sswitch_10
        0x358076 -> :sswitch_f
        0x22936ee -> :sswitch_e
        0x13dfc885 -> :sswitch_d
        0x22a57450 -> :sswitch_c
        0x230fd3d7 -> :sswitch_b
        0x2c861b47 -> :sswitch_a
        0x3ebe6b6c -> :sswitch_9
        0x445b6e46 -> :sswitch_8
        0x44c6b3e3 -> :sswitch_7
        0x4cb7f6d5 -> :sswitch_6
        0x506afbde -> :sswitch_5
        0x59bdabcf -> :sswitch_4
        0x6904828c -> :sswitch_3
        0x6f2de13c -> :sswitch_2
        0x76cb4bbf -> :sswitch_1
        0x79eeaf72 -> :sswitch_0
    .end sparse-switch
.end method
