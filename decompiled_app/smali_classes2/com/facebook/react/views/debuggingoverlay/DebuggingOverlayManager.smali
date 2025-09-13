.class public final Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "DebuggingOverlayManager.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "DebuggingOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;",
        "Lcom/facebook/react/uimanager/SimpleViewManager;",
        "Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;",
        "()V",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getName",
        "",
        "receiveCommand",
        "",
        "view",
        "commandId",
        "args",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "Companion",
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
.field public static final Companion:Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "DebuggingOverlay"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;->Companion:Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "DebuggingOverlay"

    return-object v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;->receiveCommand(Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string/jumbo v3, "view"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "commandId"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x73c1883d

    const-string v5, "DebuggingOverlay"

    if-eq v3, v4, :cond_d

    const v4, 0x4f16f299    # 2.5324813E9f

    const-string v6, "height"

    const-string/jumbo v7, "width"

    const-string/jumbo v8, "y"

    const-string/jumbo v9, "x"

    const/4 v11, 0x0

    if-eq v3, v4, :cond_7

    const v4, 0x5292bdcb

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    move-object v3, v5

    goto/16 :goto_b

    :cond_1
    const-string v3, "highlightElements"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return-void

    .line 84
    :cond_3
    invoke-interface {v2, v11}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 88
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    move v12, v11

    const/4 v0, 0x1

    :goto_1
    if-ge v12, v4, :cond_6

    .line 89
    invoke-interface {v2, v12}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v13

    .line 92
    :try_start_0
    invoke-interface {v13, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-float v14, v14

    .line 93
    invoke-interface {v13, v8}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    double-to-float v10, v10

    move-object v11, v8

    move-object/from16 v16, v9

    float-to-double v8, v14

    .line 94
    :try_start_1
    invoke-interface {v13, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-double v8, v8, v17

    double-to-float v8, v8

    move-object/from16 p2, v2

    float-to-double v1, v10

    .line 95
    :try_start_2
    invoke-interface {v13, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    add-double v1, v1, v17

    double-to-float v1, v1

    .line 96
    new-instance v2, Landroid/graphics/RectF;

    sget-object v9, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v9, v14}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v9

    sget-object v13, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v13, v10}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v10

    sget-object v13, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v13, v8}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v8

    sget-object v13, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v13, v1}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v1

    invoke-direct {v2, v9, v10, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 98
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 p2, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 p2, v2

    move-object v11, v8

    move-object/from16 v16, v9

    .line 101
    :goto_2
    instance-of v1, v0, Lcom/facebook/react/bridge/NoSuchKeyException;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    .line 102
    :cond_4
    instance-of v1, v0, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    :goto_3
    if-eqz v1, :cond_5

    .line 105
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    .line 106
    const-string v1, "Unexpected payload for highlighting elements: every element should have x, y, width, height fields"

    .line 105
    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 103
    invoke-static {v5, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v11

    move-object/from16 v9, v16

    const/4 v11, 0x0

    goto :goto_1

    .line 110
    :cond_5
    throw v0

    :cond_6
    if-eqz v0, :cond_f

    move-object/from16 v1, p1

    .line 116
    invoke-virtual {v1, v3}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->setHighlightedElementsRectangles(Ljava/util/List;)V

    goto/16 :goto_c

    :cond_7
    move-object v11, v8

    move-object/from16 v16, v9

    .line 24
    const-string v3, "highlightTraceUpdates"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v2, :cond_8

    return-void

    :cond_8
    const/4 v3, 0x0

    .line 30
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 34
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8

    move v9, v3

    const/4 v0, 0x1

    :goto_5
    if-ge v9, v8, :cond_c

    .line 35
    invoke-interface {v2, v9}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v10

    .line 36
    const-string v12, "rectangle"

    invoke-interface {v10, v12}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v12

    if-nez v12, :cond_9

    .line 40
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    .line 41
    const-string v2, "Unexpected payload for highlighting trace updates: rectangle field is null"

    .line 40
    invoke-direct {v0, v2}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 38
    invoke-static {v5, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v11, v3

    goto/16 :goto_a

    .line 47
    :cond_9
    const-string v13, "id"

    invoke-interface {v10, v13}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 48
    const-string v14, "color"

    invoke-interface {v10, v14}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 p2, v4

    move-object/from16 v14, v16

    .line 51
    :try_start_3
    invoke-interface {v12, v14}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    double-to-float v3, v3

    move-object/from16 v16, v14

    .line 52
    :try_start_4
    invoke-interface {v12, v11}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    double-to-float v14, v14

    move-object v15, v5

    float-to-double v4, v3

    .line 53
    :try_start_5
    invoke-interface {v12, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v17
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    add-double v4, v4, v17

    double-to-float v4, v4

    move-object v5, v7

    move/from16 v17, v8

    float-to-double v7, v14

    .line 54
    :try_start_6
    invoke-interface {v12, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v7, v7, v18

    double-to-float v7, v7

    .line 56
    new-instance v8, Landroid/graphics/RectF;

    sget-object v12, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v12, v3}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v3

    sget-object v12, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v12, v14}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v12

    sget-object v14, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v14, v4}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v4

    sget-object v14, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v14, v7}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v7

    invoke-direct {v8, v3, v12, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 58
    new-instance v3, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;

    invoke-direct {v3, v13, v8, v10}, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;-><init>(ILandroid/graphics/RectF;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v4, p2

    :try_start_7
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v3, v15

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v4, p2

    move-object v15, v5

    :goto_6
    move-object v5, v7

    move/from16 v17, v8

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v4, p2

    move-object v15, v5

    move-object v5, v7

    move/from16 v17, v8

    move-object/from16 v16, v14

    .line 61
    :goto_7
    instance-of v3, v0, Lcom/facebook/react/bridge/NoSuchKeyException;

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_8

    .line 62
    :cond_a
    instance-of v3, v0, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    :goto_8
    if-eqz v3, :cond_b

    .line 65
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    .line 66
    const-string v3, "Unexpected payload for highlighting trace updates: rectangle field should have x, y, width, height fields"

    .line 65
    invoke-direct {v0, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    move-object v3, v15

    .line 63
    invoke-static {v3, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object v7, v5

    move/from16 v8, v17

    move-object v5, v3

    const/4 v3, 0x0

    goto/16 :goto_5

    .line 70
    :cond_b
    throw v0

    :cond_c
    move v11, v0

    :goto_a
    if-eqz v11, :cond_f

    .line 76
    invoke-virtual {v1, v4}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->setTraceUpdates(Ljava/util/List;)V

    goto :goto_c

    :cond_d
    move-object v3, v5

    .line 24
    const-string v2, "clearElementsHighlights"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 125
    :goto_b
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v1, "Received unexpected command in DebuggingOverlayManager"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 123
    invoke-static {v3, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 120
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->clearElementsHighlights()V

    :cond_f
    :goto_c
    return-void
.end method
