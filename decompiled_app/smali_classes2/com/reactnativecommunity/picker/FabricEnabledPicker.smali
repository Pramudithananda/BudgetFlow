.class public abstract Lcom/reactnativecommunity/picker/FabricEnabledPicker;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "FabricEnabledPicker.java"


# instance fields
.field private mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method


# virtual methods
.method public getStateWrapper()Lcom/facebook/react/uimanager/StateWrapper;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-object v0
.end method

.method protected setMeasuredHeight(I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->updateState(I)V

    return-void
.end method

.method public setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method

.method updateState(I)V
    .locals 6

    int-to-float p1, p1

    .line 36
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    .line 40
    iget-object v0, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/StateWrapper;->getStateData()Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object v0

    .line 41
    const-string v1, "measuredHeight"

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    sub-float/2addr v0, p1

    .line 43
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    return-void

    .line 47
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    float-to-double v2, p1

    .line 48
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 49
    iget-object p1, p0, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/StateWrapper;->updateState(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
