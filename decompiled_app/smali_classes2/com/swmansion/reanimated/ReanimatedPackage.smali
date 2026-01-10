.class public Lcom/swmansion/reanimated/ReanimatedPackage;
.super Lcom/facebook/react/BaseReactPackage;
.source "ReanimatedPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/facebook/react/BaseReactPackage;-><init>()V

    return-void
.end method

.method private createUIManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;
    .locals 4

    .line 78
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 79
    const-string v0, "createUIManagerModule"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/ReanimatedPackage;->getReactInstanceManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lcom/facebook/react/ReactInstanceManager;->getOrCreateViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v0

    const/4 v3, -0x1

    .line 84
    :try_start_0
    invoke-static {p1, v0, v3}, Lcom/swmansion/reanimated/ReanimatedUIManagerFactory;->create(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;I)Lcom/facebook/react/uimanager/UIManagerModule;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 88
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 87
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 88
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 89
    throw p1
.end method

.method static synthetic lambda$getReactModuleInfoProvider$0(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
    .locals 2

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "UIManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "ReanimatedModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "WorkletsModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 46
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/swmansion/reanimated/ReanimatedPackage;->createUIManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;

    move-result-object p1

    goto :goto_1

    .line 45
    :pswitch_1
    new-instance p1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-direct {p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    goto :goto_1

    .line 44
    :pswitch_2
    new-instance p1, Lcom/swmansion/worklets/WorkletsModule;

    invoke-direct {p1, p2}, Lcom/swmansion/worklets/WorkletsModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x3cfd43cb -> :sswitch_2
        0x4129b302 -> :sswitch_1
        0x6ef04e79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getReactInstanceManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/ReactInstanceManager;
    .locals 0

    .line 101
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/ReactApplication;

    .line 102
    invoke-interface {p1}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    return-object p1
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 15

    const/4 v0, 0x3

    .line 53
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lcom/swmansion/worklets/WorkletsModule;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Lcom/swmansion/reanimated/ReanimatedModule;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-class v4, Lcom/facebook/react/uimanager/ReanimatedUIManager;

    aput-object v4, v1, v2

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    if-ge v3, v0, :cond_0

    .line 59
    aget-object v4, v1, v3

    .line 60
    const-class v5, Lcom/facebook/react/module/annotations/ReactModule;

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/module/annotations/ReactModule;

    .line 64
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 66
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v8

    .line 67
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->needsEagerInit()Z

    move-result v11

    .line 70
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->isCxxModule()Z

    move-result v12

    const/4 v13, 0x1

    const/4 v10, 0x1

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 63
    invoke-interface {v2, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/swmansion/reanimated/ReanimatedPackage$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lcom/swmansion/reanimated/ReanimatedPackage$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
