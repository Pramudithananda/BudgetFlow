.class public final Lexpo/modules/kotlin/objects/EventObservingDefinition;
.super Ljava/lang/Object;
.source "EventObservingDefinition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/objects/EventObservingDefinition$AllEventsFilter;,
        Lexpo/modules/kotlin/objects/EventObservingDefinition$Filter;,
        Lexpo/modules/kotlin/objects/EventObservingDefinition$SelectedEventFiler;,
        Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0004\u0011\u0012\u0013\u0014B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rJ\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u0010R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/kotlin/objects/EventObservingDefinition;",
        "",
        "type",
        "Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;",
        "filer",
        "Lexpo/modules/kotlin/objects/EventObservingDefinition$Filter;",
        "body",
        "Lkotlin/Function0;",
        "",
        "(Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;Lexpo/modules/kotlin/objects/EventObservingDefinition$Filter;Lkotlin/jvm/functions/Function0;)V",
        "invokedIfNeed",
        "eventType",
        "eventName",
        "",
        "shouldBeInvoked",
        "",
        "shouldBeInvoked$expo_modules_core_release",
        "AllEventsFilter",
        "Filter",
        "SelectedEventFiler",
        "Type",
        "expo-modules-core_release"
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
.field public static final $stable:I


# instance fields
.field private final body:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final filer:Lexpo/modules/kotlin/objects/EventObservingDefinition$Filter;

.field private final type:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;Lexpo/modules/kotlin/objects/EventObservingDefinition$Filter;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;",
            "Lexpo/modules/kotlin/objects/EventObservingDefinition$Filter;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lexpo/modules/kotlin/objects/EventObservingDefinition;->type:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

    .line 5
    iput-object p2, p0, Lexpo/modules/kotlin/objects/EventObservingDefinition;->filer:Lexpo/modules/kotlin/objects/EventObservingDefinition$Filter;

    .line 6
    iput-object p3, p0, Lexpo/modules/kotlin/objects/EventObservingDefinition;->body:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invokedIfNeed(Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;Ljava/lang/String;)V
    .locals 1

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lexpo/modules/kotlin/objects/EventObservingDefinition;->type:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lexpo/modules/kotlin/objects/EventObservingDefinition;->shouldBeInvoked$expo_modules_core_release(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lexpo/modules/kotlin/objects/EventObservingDefinition;->body:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final shouldBeInvoked$expo_modules_core_release(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lexpo/modules/kotlin/objects/EventObservingDefinition;->filer:Lexpo/modules/kotlin/objects/EventObservingDefinition$Filter;

    .line 21
    instance-of v1, v0, Lexpo/modules/kotlin/objects/EventObservingDefinition$AllEventsFilter;

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    instance-of v1, v0, Lexpo/modules/kotlin/objects/EventObservingDefinition$SelectedEventFiler;

    if-eqz v1, :cond_1

    check-cast v0, Lexpo/modules/kotlin/objects/EventObservingDefinition$SelectedEventFiler;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/EventObservingDefinition$SelectedEventFiler;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
