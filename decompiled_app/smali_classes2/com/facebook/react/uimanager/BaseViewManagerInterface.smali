.class public interface abstract Lcom/facebook/react/uimanager/BaseViewManagerInterface;
.super Ljava/lang/Object;
.source "BaseViewManagerInterface.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u001a\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J\u001f\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0002\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0002\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H&\u00a2\u0006\u0002\u0010\u0019J\u001f\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u001f\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u001d\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020 H&\u00a2\u0006\u0002\u0010!J\u001d\u0010\"\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010#\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010&\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010#\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010\'\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010#\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010(\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010#\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010)\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010#\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010*\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010+\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010,\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010-\u001a\u00020\u0008H&\u00a2\u0006\u0002\u0010\tJ\u001f\u0010.\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010/\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u001d\u00100\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u00100\u001a\u00020\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u001f\u00101\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u001d\u00102\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u00103\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u00104\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u00105\u001a\u000206H&\u00a2\u0006\u0002\u00107J\u001f\u00108\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u00109\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u001d\u0010:\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010;\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010<\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010=\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010>\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010?\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010@\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010A\u001a\u00020 H&\u00a2\u0006\u0002\u0010!J\u001f\u0010B\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010C\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u001f\u0010D\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010E\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0002\u0010\tJ\u001f\u0010F\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010G\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0002\u0010\tJ\u001d\u0010H\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010I\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001d\u0010J\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010K\u001a\u00020$H&\u00a2\u0006\u0002\u0010%J\u001f\u0010L\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010M\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0002\u0010\rJ\u001d\u0010N\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010O\u001a\u00020$H&\u00a2\u0006\u0002\u0010%\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006P\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface;",
        "T",
        "Landroid/view/View;",
        "",
        "setAccessibilityActions",
        "",
        "view",
        "accessibilityActions",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V",
        "setAccessibilityCollection",
        "accessibilityCollection",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V",
        "setAccessibilityCollectionItem",
        "accessibilityCollectionItem",
        "setAccessibilityHint",
        "accessibilityHint",
        "",
        "(Landroid/view/View;Ljava/lang/String;)V",
        "setAccessibilityLabel",
        "accessibilityLabel",
        "setAccessibilityLabelledBy",
        "nativeId",
        "Lcom/facebook/react/bridge/Dynamic;",
        "(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V",
        "setAccessibilityLiveRegion",
        "liveRegion",
        "setAccessibilityRole",
        "accessibilityRole",
        "setBackgroundColor",
        "backgroundColor",
        "",
        "(Landroid/view/View;I)V",
        "setBorderBottomLeftRadius",
        "borderRadius",
        "",
        "(Landroid/view/View;F)V",
        "setBorderBottomRightRadius",
        "setBorderRadius",
        "setBorderTopLeftRadius",
        "setBorderTopRightRadius",
        "setElevation",
        "elevation",
        "setFilter",
        "filter",
        "setImportantForAccessibility",
        "importantForAccessibility",
        "setMixBlendMode",
        "setNativeId",
        "setOpacity",
        "opacity",
        "setRenderToHardwareTexture",
        "useHWTexture",
        "",
        "(Landroid/view/View;Z)V",
        "setRole",
        "role",
        "setRotation",
        "rotation",
        "setScaleX",
        "scaleX",
        "setScaleY",
        "scaleY",
        "setShadowColor",
        "shadowColor",
        "setTestId",
        "testId",
        "setTransform",
        "matrix",
        "setTransformOrigin",
        "transformOrigin",
        "setTranslateX",
        "translateX",
        "setTranslateY",
        "translateY",
        "setViewState",
        "accessibilityState",
        "setZIndex",
        "zIndex",
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


# virtual methods
.method public abstract setAccessibilityActions(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setAccessibilityCollection(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setAccessibilityCollectionItem(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setAccessibilityHint(Landroid/view/View;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setAccessibilityLabelledBy(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setAccessibilityRole(Landroid/view/View;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setBackgroundColor(Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract setBorderBottomLeftRadius(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setBorderBottomRightRadius(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setBorderRadius(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setBorderTopLeftRadius(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setBorderTopRightRadius(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setElevation(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setFilter(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setMixBlendMode(Landroid/view/View;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setNativeId(Landroid/view/View;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setOpacity(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setRenderToHardwareTexture(Landroid/view/View;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract setRole(Landroid/view/View;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setRotation(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setScaleX(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setScaleY(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setShadowColor(Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract setTestId(Landroid/view/View;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setTransformOrigin(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setTranslateX(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setTranslateY(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract setViewState(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setZIndex(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method
