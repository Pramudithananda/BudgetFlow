.class public final Lcom/facebook/react/fabric/mounting/mountitems/MountItemFactory;
.super Ljava/lang/Object;
.source "MountItemFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u000b2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J5\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0010\u0013J<\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J \u0010\u001c\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/react/fabric/mounting/mountitems/MountItemFactory;",
        "",
        "()V",
        "createDispatchCommandMountItem",
        "Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;",
        "surfaceId",
        "",
        "reactTag",
        "commandId",
        "commandArgs",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "",
        "createIntBufferBatchMountItem",
        "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
        "intBuf",
        "",
        "objBuf",
        "",
        "commitNumber",
        "(I[I[Ljava/lang/Object;I)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
        "createPreAllocateViewMountItem",
        "component",
        "props",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "stateWrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
        "isLayoutable",
        "",
        "createSendAccessibilityEventMountItem",
        "eventType",
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
.field public static final INSTANCE:Lcom/facebook/react/fabric/mounting/mountitems/MountItemFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/MountItemFactory;

    invoke-direct {v0}, Lcom/facebook/react/fabric/mounting/mountitems/MountItemFactory;-><init>()V

    sput-object v0, Lcom/facebook/react/fabric/mounting/mountitems/MountItemFactory;->INSTANCE:Lcom/facebook/react/fabric/mounting/mountitems/MountItemFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createDispatchCommandMountItem(IIILcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 24
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchIntCommandMountItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchIntCommandMountItem;-><init>(IIILcom/facebook/react/bridge/ReadableArray;)V

    check-cast v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    return-object v0
.end method

.method public static final createDispatchCommandMountItem(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "commandId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;-><init>(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    check-cast v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    return-object v0
.end method

.method public static final createIntBufferBatchMountItem(I[I[Ljava/lang/Object;I)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "intBuf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objBuf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;-><init>(I[I[Ljava/lang/Object;I)V

    check-cast v0, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    return-object v0
.end method

.method public static final createPreAllocateViewMountItem(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "component"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;-><init>(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V

    check-cast v0, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    return-object v0
.end method

.method public static final createSendAccessibilityEventMountItem(III)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 42
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEventMountItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEventMountItem;-><init>(III)V

    check-cast v0, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    return-object v0
.end method
