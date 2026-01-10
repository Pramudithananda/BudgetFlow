.class public abstract Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;
.super Ljava/lang/Object;
.source "NativeModulePerfLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H$J\u0008\u0010\u0007\u001a\u00020\u0008H\u0004J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u000e\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u000f\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0010\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0012\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0013\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0014\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0015\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0016\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&R\u0014\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;",
        "",
        "()V",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "getMHybridData$annotations",
        "initHybrid",
        "maybeLoadOtherSoLibraries",
        "",
        "moduleCreateCacheHit",
        "moduleName",
        "",
        "id",
        "",
        "moduleCreateConstructEnd",
        "moduleCreateConstructStart",
        "moduleCreateEnd",
        "moduleCreateFail",
        "moduleCreateSetUpEnd",
        "moduleCreateSetUpStart",
        "moduleCreateStart",
        "moduleDataCreateEnd",
        "moduleDataCreateStart",
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
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->maybeLoadOtherSoLibraries()V

    .line 18
    invoke-virtual {p0}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private static synthetic getMHybridData$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected abstract initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method protected final declared-synchronized maybeLoadOtherSoLibraries()V
    .locals 0

    monitor-enter p0

    .line 47
    monitor-exit p0

    return-void
.end method

.method public abstract moduleCreateCacheHit(Ljava/lang/String;I)V
.end method

.method public abstract moduleCreateConstructEnd(Ljava/lang/String;I)V
.end method

.method public abstract moduleCreateConstructStart(Ljava/lang/String;I)V
.end method

.method public abstract moduleCreateEnd(Ljava/lang/String;I)V
.end method

.method public abstract moduleCreateFail(Ljava/lang/String;I)V
.end method

.method public abstract moduleCreateSetUpEnd(Ljava/lang/String;I)V
.end method

.method public abstract moduleCreateSetUpStart(Ljava/lang/String;I)V
.end method

.method public abstract moduleCreateStart(Ljava/lang/String;I)V
.end method

.method public abstract moduleDataCreateEnd(Ljava/lang/String;I)V
.end method

.method public abstract moduleDataCreateStart(Ljava/lang/String;I)V
.end method
