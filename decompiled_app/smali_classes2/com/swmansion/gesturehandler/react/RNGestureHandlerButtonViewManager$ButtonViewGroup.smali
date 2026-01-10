.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
.super Landroid/view/ViewGroup;
.source "RNGestureHandlerButtonViewManager.kt"

# interfaces
.implements Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonViewGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNGestureHandlerButtonViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNGestureHandlerButtonViewManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,569:1\n221#1,3:570\n221#1,3:573\n221#1,3:576\n221#1,3:579\n221#1,3:582\n221#1,3:585\n221#1,3:588\n221#1,3:591\n221#1,3:594\n221#1,3:597\n221#1,3:600\n221#1,3:607\n11115#2:603\n11450#2,3:604\n*S KotlinDebug\n*F\n+ 1 RNGestureHandlerButtonViewManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup\n*L\n148#1:570,3\n153#1:573,3\n157#1:576,3\n162#1:579,3\n166#1:582,3\n170#1:585,3\n174#1:588,3\n178#1:591,3\n182#1:594,3\n186#1:597,3\n190#1:600,3\n249#1:607,3\n237#1:603\n237#1:604,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 |2\u00020\u00012\u00020\u0002:\u0001|B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020LH\u0016J\u0008\u0010M\u001a\u00020NH\u0002J\n\u0010O\u001a\u0004\u0018\u00010PH\u0002J\u0010\u0010Q\u001a\u00020.2\u0006\u0010K\u001a\u00020LH\u0016J\u0008\u0010R\u001a\u00020SH\u0002J\n\u0010T\u001a\u0004\u0018\u00010SH\u0002J\u0018\u0010U\u001a\u00020J2\u0006\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020\tH\u0016J\u0018\u0010X\u001a\u00020J2\u0006\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020\tH\u0016J\n\u0010Y\u001a\u0004\u0018\u00010ZH\u0002J\u0018\u0010[\u001a\u00020.2\u000e\u0008\u0002\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020^0]H\u0002J\u0010\u0010_\u001a\u00020J2\u0006\u0010`\u001a\u00020aH\u0016J\u0010\u0010b\u001a\u00020.2\u0006\u0010c\u001a\u00020LH\u0016J\u001a\u0010d\u001a\u00020.2\u0006\u0010e\u001a\u00020\u00072\u0008\u0010K\u001a\u0004\u0018\u00010fH\u0016J0\u0010g\u001a\u00020J2\u0006\u0010h\u001a\u00020.2\u0006\u0010i\u001a\u00020\u00072\u0006\u0010j\u001a\u00020\u00072\u0006\u0010k\u001a\u00020\u00072\u0006\u0010l\u001a\u00020\u0007H\u0014J\u0010\u0010m\u001a\u00020.2\u0006\u0010K\u001a\u00020LH\u0017J\u0008\u0010n\u001a\u00020.H\u0016J\u0010\u0010o\u001a\u00020J2\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u0010\u0010p\u001a\u00020J2\u0006\u0010q\u001a\u00020.H\u0016J\u0008\u0010r\u001a\u00020JH\u0002J\u0008\u0010s\u001a\u00020.H\u0002J\u0006\u0010t\u001a\u00020JJ\"\u0010u\u001a\u00020J2\u0006\u0010v\u001a\u00020\u00072\u0006\u0010w\u001a\u00020S2\u0008\u0010x\u001a\u0004\u0018\u00010SH\u0002J\u0017\u0010y\u001a\u00020J2\u000c\u0010z\u001a\u0008\u0012\u0004\u0012\u00020J0{H\u0082\u0008R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR*\u0010\u0013\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000c\"\u0004\u0008\u001b\u0010\u000eR(\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R$\u0010#\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u000c\"\u0004\u0008%\u0010\u000eR$\u0010&\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u000c\"\u0004\u0008(\u0010\u000eR$\u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000c\"\u0004\u0008,\u0010\u000eR\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0014\u00103\u001a\u00020.8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00100R\u001a\u00105\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00100\"\u0004\u00086\u00102R\u000e\u00107\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010<\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008=\u0010\u0015\"\u0004\u0008>\u0010\u0017R*\u0010?\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008@\u0010\u0015\"\u0004\u0008A\u0010\u0017R\u001a\u0010B\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u00100\"\u0004\u0008D\u00102R$\u0010F\u001a\u00020.2\u0006\u0010E\u001a\u00020.@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u00100\"\u0004\u0008H\u00102\u00a8\u0006}"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;",
        "Landroid/view/ViewGroup;",
        "Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_backgroundColor",
        "",
        "radius",
        "",
        "borderBottomLeftRadius",
        "getBorderBottomLeftRadius",
        "()F",
        "setBorderBottomLeftRadius",
        "(F)V",
        "borderBottomRightRadius",
        "getBorderBottomRightRadius",
        "setBorderBottomRightRadius",
        "color",
        "borderColor",
        "getBorderColor",
        "()Ljava/lang/Integer;",
        "setBorderColor",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "borderRadius",
        "getBorderRadius",
        "setBorderRadius",
        "style",
        "",
        "borderStyle",
        "getBorderStyle",
        "()Ljava/lang/String;",
        "setBorderStyle",
        "(Ljava/lang/String;)V",
        "borderTopLeftRadius",
        "getBorderTopLeftRadius",
        "setBorderTopLeftRadius",
        "borderTopRightRadius",
        "getBorderTopRightRadius",
        "setBorderTopRightRadius",
        "width",
        "borderWidth",
        "getBorderWidth",
        "setBorderWidth",
        "exclusive",
        "",
        "getExclusive",
        "()Z",
        "setExclusive",
        "(Z)V",
        "hasBorderRadii",
        "getHasBorderRadii",
        "isTouched",
        "setTouched",
        "lastAction",
        "lastEventTime",
        "",
        "needBackgroundUpdate",
        "receivedKeyEvent",
        "rippleColor",
        "getRippleColor",
        "setRippleColor",
        "rippleRadius",
        "getRippleRadius",
        "setRippleRadius",
        "useBorderlessDrawable",
        "getUseBorderlessDrawable",
        "setUseBorderlessDrawable",
        "useForeground",
        "useDrawableOnForeground",
        "getUseDrawableOnForeground",
        "setUseDrawableOnForeground",
        "afterGestureEnd",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "buildBorderRadii",
        "",
        "buildBorderStyle",
        "Landroid/graphics/PathEffect;",
        "canBegin",
        "createBorderDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "createSelectableDrawable",
        "dispatchDrawableHotspotChanged",
        "x",
        "y",
        "drawableHotspotChanged",
        "findGestureHandlerRootView",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;",
        "isChildTouched",
        "children",
        "Lkotlin/sequences/Sequence;",
        "Landroid/view/View;",
        "onInitializeAccessibilityNodeInfo",
        "info",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        "onInterceptTouchEvent",
        "ev",
        "onKeyUp",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onTouchEvent",
        "performClick",
        "setBackgroundColor",
        "setPressed",
        "pressed",
        "tryFreeingResponder",
        "tryGrabbingResponder",
        "updateBackground",
        "updateBackgroundColor",
        "backgroundColor",
        "borderDrawable",
        "selectable",
        "withBackgroundUpdate",
        "block",
        "Lkotlin/Function0;",
        "Companion",
        "react-native-gesture-handler_release"
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
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;

.field private static dummyClickListener:Landroid/view/View$OnClickListener;

.field private static resolveOutValue:Landroid/util/TypedValue;

.field private static soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

.field private static touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;


# instance fields
.field private _backgroundColor:I

.field private borderBottomLeftRadius:F

.field private borderBottomRightRadius:F

.field private borderColor:Ljava/lang/Integer;

.field private borderRadius:F

.field private borderStyle:Ljava/lang/String;

.field private borderTopLeftRadius:F

.field private borderTopRightRadius:F

.field private borderWidth:F

.field private exclusive:Z

.field private isTouched:Z

.field private lastAction:I

.field private lastEventTime:J

.field private needBackgroundUpdate:Z

.field private receivedKeyEvent:Z

.field private rippleColor:Ljava/lang/Integer;

.field private rippleRadius:Ljava/lang/Integer;

.field private useBorderlessDrawable:Z

.field private useDrawableOnForeground:Z


# direct methods
.method public static synthetic $r8$lambda$1r2X1TrXYvS1Dkh-vrdW5Q515A8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener$lambda$14(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;

    .line 558
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    .line 561
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 144
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 189
    const-string p1, "solid"

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderStyle:Ljava/lang/String;

    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    const-wide/16 v0, -0x1

    .line 205
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    const/4 v0, -0x1

    .line 206
    iput v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    .line 213
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setClickable(Z)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setFocusable(Z)V

    .line 216
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    const/4 p1, 0x0

    .line 217
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public static final synthetic access$getDummyClickListener$cp()Landroid/view/View$OnClickListener;
    .locals 1

    .line 143
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static final synthetic access$getResolveOutValue$cp()Landroid/util/TypedValue;
    .locals 1

    .line 143
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    return-object v0
.end method

.method public static final synthetic access$getSoundResponder$cp()Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .locals 1

    .line 143
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-object v0
.end method

.method public static final synthetic access$getTouchResponder$cp()Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .locals 1

    .line 143
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-object v0
.end method

.method public static final synthetic access$setDummyClickListener$cp(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 143
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$setResolveOutValue$cp(Landroid/util/TypedValue;)V
    .locals 0

    .line 143
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    return-void
.end method

.method public static final synthetic access$setSoundResponder$cp(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;)V
    .locals 0

    .line 143
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-void
.end method

.method public static final synthetic access$setTouchResponder$cp(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;)V
    .locals 0

    .line 143
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-void
.end method

.method private final buildBorderRadii()[F
    .locals 8

    .line 228
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopLeftRadius:F

    .line 230
    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopRightRadius:F

    .line 232
    iget v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomRightRadius:F

    .line 234
    iget v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomLeftRadius:F

    const/16 v4, 0x8

    .line 235
    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    aput v0, v5, v7

    const/4 v0, 0x2

    aput v1, v5, v0

    const/4 v0, 0x3

    aput v1, v5, v0

    const/4 v0, 0x4

    aput v2, v5, v0

    const/4 v0, 0x5

    aput v2, v5, v0

    const/4 v0, 0x6

    aput v3, v5, v0

    const/4 v0, 0x7

    aput v3, v5, v0

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    :goto_0
    if-ge v6, v4, :cond_1

    .line 604
    aget v1, v5, v6

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-nez v2, :cond_0

    .line 237
    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 605
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 606
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 603
    check-cast v0, Ljava/util/Collection;

    .line 238
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v0

    return-object v0
.end method

.method private final buildBorderStyle()Landroid/graphics/PathEffect;
    .locals 12

    .line 242
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderStyle:Ljava/lang/String;

    .line 243
    const-string v1, "dotted"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/DashPathEffect;

    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    new-array v6, v6, [F

    aput v1, v6, v5

    aput v1, v6, v4

    aput v1, v6, v3

    aput v1, v6, v7

    invoke-direct {v0, v6, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    check-cast v0, Landroid/graphics/PathEffect;

    goto :goto_0

    .line 244
    :cond_0
    const-string v1, "dashed"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/DashPathEffect;

    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    int-to-float v8, v7

    mul-float v9, v1, v8

    mul-float v10, v1, v8

    mul-float v11, v1, v8

    mul-float/2addr v1, v8

    new-array v6, v6, [F

    aput v9, v6, v5

    aput v10, v6, v4

    aput v11, v6, v3

    aput v1, v6, v7

    invoke-direct {v0, v6, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    check-cast v0, Landroid/graphics/PathEffect;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final createBorderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 369
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 371
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getHasBorderRadii()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->buildBorderRadii()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 375
    :cond_0
    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 376
    invoke-virtual {v0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 377
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 379
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderColor:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/high16 v2, -0x1000000

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->buildBorderStyle()Landroid/graphics/PathEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 384
    :cond_2
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final createSelectableDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 389
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :goto_0
    const v0, 0x101009e

    .line 393
    filled-new-array {v0}, [I

    move-result-object v0

    filled-new-array {v0}, [[I

    move-result-object v0

    .line 394
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleRadius:Ljava/lang/Integer;

    .line 395
    iget-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 396
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    .line 397
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_1

    .line 400
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    const/4 v5, 0x1

    const v6, 0x101042c

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 401
    sget-object v3, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    iget v3, v3, Landroid/util/TypedValue;->data:I

    filled-new-array {v3}, [I

    move-result-object v3

    .line 402
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 405
    :goto_1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 408
    iget-boolean v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useBorderlessDrawable:Z

    if-eqz v3, :cond_3

    move-object v3, v1

    goto :goto_2

    :cond_3
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    check-cast v5, Landroid/graphics/drawable/shapes/Shape;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    :goto_2
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 405
    invoke-direct {v0, v4, v1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_4

    .line 412
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    .line 415
    :cond_4
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static final dummyClickListener$lambda$14(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final findGestureHandlerRootView()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;
    .locals 3

    .line 544
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 548
    instance-of v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;

    if-eqz v2, :cond_0

    .line 549
    move-object v1, v0

    check-cast v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;

    .line 551
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final getHasBorderRadii()Z
    .locals 2

    .line 195
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 196
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopLeftRadius:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 197
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopRightRadius:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 198
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomLeftRadius:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 199
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomRightRadius:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final isChildTouched(Lkotlin/sequences/Sequence;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 469
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 470
    instance-of v1, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    iget-boolean v3, v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    .line 472
    :cond_2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 473
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched(Lkotlin/sequences/Sequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 468
    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched(Lkotlin/sequences/Sequence;)Z

    move-result p0

    return p0
.end method

.method private final tryFreeingResponder()V
    .locals 1

    .line 446
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 447
    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 448
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    :cond_0
    return-void
.end method

.method private final tryGrabbingResponder()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 453
    invoke-static {p0, v0, v1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 457
    :cond_0
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-nez v0, :cond_1

    .line 458
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return v1

    .line 461
    :cond_1
    iget-boolean v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    if-eqz v3, :cond_3

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 464
    iget-boolean v0, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v1
.end method

.method private final updateBackgroundColor(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 322
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 324
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getHasBorderRadii()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->buildBorderRadii()[F

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 328
    :cond_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p3, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v2

    aput-object p3, v4, v1

    aput-object p2, v4, v3

    goto :goto_0

    :cond_1
    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v2

    aput-object p2, v4, v1

    :goto_0
    invoke-direct {p1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 329
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final withBackgroundUpdate(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method


# virtual methods
.method public afterGestureEnd(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryFreeingResponder()V

    const/4 p1, 0x0

    .line 442
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    return-void
.end method

.method public canActivate(Landroid/view/View;)Z
    .locals 0

    .line 143
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->canActivate(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public canBegin(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryGrabbingResponder()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 435
    iput-boolean v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 423
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_1

    .line 424
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    :cond_1
    return-void
.end method

.method public final getBorderBottomLeftRadius()F
    .locals 1

    .line 173
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomLeftRadius:F

    return v0
.end method

.method public final getBorderBottomRightRadius()F
    .locals 1

    .line 177
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomRightRadius:F

    return v0
.end method

.method public final getBorderColor()Ljava/lang/Integer;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBorderRadius()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    return v0
.end method

.method public final getBorderStyle()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderStyle:Ljava/lang/String;

    return-object v0
.end method

.method public final getBorderTopLeftRadius()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopLeftRadius:F

    return v0
.end method

.method public final getBorderTopRightRadius()F
    .locals 1

    .line 169
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopRightRadius:F

    return v0
.end method

.method public final getBorderWidth()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    return v0
.end method

.method public final getExclusive()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    return v0
.end method

.method public final getRippleColor()Ljava/lang/Integer;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRippleRadius()Ljava/lang/Integer;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleRadius:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUseBorderlessDrawable()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useBorderlessDrawable:Z

    return v0
.end method

.method public final getUseDrawableOnForeground()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useDrawableOnForeground:Z

    return v0
.end method

.method public handleEventBeforeActivation(Landroid/view/MotionEvent;)V
    .locals 0

    .line 143
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->handleEventBeforeActivation(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final isTouched()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 260
    sget v0, Lcom/facebook/react/R$id;->react_test_id:I

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 262
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 274
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isPressed()Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->receivedKeyEvent:Z

    .line 484
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 299
    sget-object v3, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v3, v3, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p0, v4}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setPressed(Z)V

    .line 303
    :cond_0
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    .line 304
    iput v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    return v4

    .line 308
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryFreeingResponder()V

    .line 313
    :cond_2
    iget-wide v6, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    cmp-long v3, v6, v0

    if-nez v3, :cond_4

    iget v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    if-ne v3, v2, :cond_4

    if-ne v2, v5, :cond_3

    goto :goto_0

    :cond_3
    return v4

    .line 314
    :cond_4
    :goto_0
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    .line 315
    iput v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    .line 316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 490
    invoke-static {p0, v1, v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 492
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getContext(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/swmansion/gesturehandler/react/ExtensionsKt;->isScreenReaderOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->findGestureHandlerRootView()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;->activateNativeHandlers(Landroid/view/View;)V

    goto :goto_0

    .line 494
    :cond_0
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->receivedKeyEvent:Z

    if-eqz v0, :cond_2

    .line 495
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->findGestureHandlerRootView()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;->activateNativeHandlers(Landroid/view/View;)V

    .line 496
    :cond_1
    iput-boolean v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->receivedKeyEvent:Z

    .line 499
    :cond_2
    :goto_0
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-ne v0, p0, :cond_3

    .line 500
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryFreeingResponder()V

    .line 501
    sput-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 502
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v2

    :cond_3
    return v2
.end method

.method public sendTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 143
    invoke-static {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->sendTouchEvent(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/View;Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    const/4 p1, 0x1

    .line 608
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setBorderBottomLeftRadius(F)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomLeftRadius:F

    const/4 p1, 0x1

    .line 589
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setBorderBottomRightRadius(F)V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomRightRadius:F

    const/4 p1, 0x1

    .line 592
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setBorderColor(Ljava/lang/Integer;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderColor:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 598
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setBorderRadius(F)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    const/4 p1, 0x1

    .line 580
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setBorderStyle(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderStyle:Ljava/lang/String;

    const/4 p1, 0x1

    .line 601
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setBorderTopLeftRadius(F)V
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopLeftRadius:F

    const/4 p1, 0x1

    .line 583
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setBorderTopRightRadius(F)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopRightRadius:F

    const/4 p1, 0x1

    .line 586
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setBorderWidth(F)V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    const/4 p1, 0x1

    .line 595
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setExclusive(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryGrabbingResponder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 524
    :cond_0
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 526
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-eq v0, p0, :cond_3

    if-eqz v2, :cond_4

    .line 529
    :cond_3
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    .line 530
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setPressed(Z)V

    :cond_4
    if-nez p1, :cond_5

    .line 532
    sget-object p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-ne p1, p0, :cond_5

    .line 534
    iput-boolean v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    :cond_5
    return-void
.end method

.method public final setRippleColor(Ljava/lang/Integer;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 571
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setRippleRadius(Ljava/lang/Integer;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleRadius:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public final setTouched(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    return-void
.end method

.method public final setUseBorderlessDrawable(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useBorderlessDrawable:Z

    return-void
.end method

.method public final setUseDrawableOnForeground(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useDrawableOnForeground:Z

    const/4 p1, 0x1

    .line 577
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public shouldCancelRootViewGestureHandlerIfNecessary()Z
    .locals 1

    .line 143
    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldCancelRootViewGestureHandlerIfNecessary(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 143
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;Lcom/swmansion/gesturehandler/core/GestureHandler;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final updateBackground()V
    .locals 7

    .line 333
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 338
    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 340
    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :cond_1
    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 347
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->createSelectableDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 348
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->createBorderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 350
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getHasBorderRadii()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_2

    .line 351
    new-instance v4, Landroid/graphics/drawable/PaintDrawable;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 352
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->buildBorderRadii()[F

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 353
    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    const v6, 0x102002e

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v4}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 356
    :cond_2
    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useDrawableOnForeground:Z

    if-eqz v4, :cond_3

    .line 357
    invoke-virtual {p0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    if-eqz v0, :cond_5

    .line 359
    invoke-direct {p0, v0, v3, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->updateBackgroundColor(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 361
    :cond_3
    iget v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    if-nez v4, :cond_4

    .line 362
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object v3, v4, v0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 364
    :cond_4
    invoke-direct {p0, v2, v3, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->updateBackgroundColor(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public wantsToHandleEventBeforeActivation()Z
    .locals 1

    .line 143
    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->wantsToHandleEventBeforeActivation(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method
