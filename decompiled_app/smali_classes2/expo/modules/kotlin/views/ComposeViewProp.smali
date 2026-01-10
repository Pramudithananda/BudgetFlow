.class public final Lexpo/modules/kotlin/views/ComposeViewProp;
.super Lexpo/modules/kotlin/views/AnyViewProp;
.source "ComposeViewProp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposeViewProp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeViewProp.kt\nexpo/modules/kotlin/views/ComposeViewProp\n+ 2 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 3 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,36:1\n5#2,4:37\n11#3,6:41\n*S KotlinDebug\n*F\n+ 1 ComposeViewProp.kt\nexpo/modules/kotlin/views/ComposeViewProp\n*L\n21#1:37,4\n21#1:41,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u0002\u0010\u0008J\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u000bR\u0019\u0010\u0006\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/ComposeViewProp;",
        "Lexpo/modules/kotlin/views/AnyViewProp;",
        "name",
        "",
        "anyType",
        "Lexpo/modules/kotlin/types/AnyType;",
        "property",
        "Lkotlin/reflect/KProperty1;",
        "(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/reflect/KProperty1;)V",
        "isNullable",
        "",
        "()Z",
        "getProperty",
        "()Lkotlin/reflect/KProperty1;",
        "set",
        "",
        "prop",
        "Lcom/facebook/react/bridge/Dynamic;",
        "onView",
        "Landroid/view/View;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final isNullable:Z

.field private final property:Lkotlin/reflect/KProperty1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KProperty1<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/reflect/KProperty1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/types/AnyType;",
            "Lkotlin/reflect/KProperty1<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anyType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/views/AnyViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;)V

    .line 16
    iput-object p3, p0, Lexpo/modules/kotlin/views/ComposeViewProp;->property:Lkotlin/reflect/KProperty1;

    .line 34
    invoke-virtual {p2}, Lexpo/modules/kotlin/types/AnyType;->getKType()Lkotlin/reflect/KType;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result p1

    iput-boolean p1, p0, Lexpo/modules/kotlin/views/ComposeViewProp;->isNullable:Z

    return-void
.end method


# virtual methods
.method public final getProperty()Lkotlin/reflect/KProperty1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KProperty1<",
            "**>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposeViewProp;->property:Lkotlin/reflect/KProperty1;

    return-object v0
.end method

.method public isNullable()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lexpo/modules/kotlin/views/ComposeViewProp;->isNullable:Z

    return v0
.end method

.method public set(Lcom/facebook/react/bridge/Dynamic;Landroid/view/View;Lexpo/modules/kotlin/AppContext;)V
    .locals 3

    const-string/jumbo v0, "\u26a0\ufe0f Property "

    const-string v1, "prop"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onView"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :try_start_0
    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/views/ExpoComposeView;

    invoke-virtual {v1}, Lexpo/modules/kotlin/views/ExpoComposeView;->getProps()Lexpo/modules/kotlin/views/ComposeProps;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v2, p0, Lexpo/modules/kotlin/views/ComposeViewProp;->property:Lkotlin/reflect/KProperty1;

    invoke-interface {v2}, Lkotlin/reflect/KProperty1;->getGetter()Lkotlin/reflect/KProperty1$Getter;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lkotlin/reflect/KProperty1$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    instance-of v2, v1, Landroidx/compose/runtime/MutableState;

    if-eqz v2, :cond_1

    .line 27
    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getType$expo_modules_core_release()Lexpo/modules/kotlin/types/AnyType;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lexpo/modules/kotlin/types/AnyType;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p1

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " is not a MutableState in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p3, v1, v0, v1}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 31
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 43
    instance-of p3, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-nez p3, :cond_3

    .line 44
    instance-of p3, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz p3, :cond_2

    new-instance p3, Lexpo/modules/kotlin/exception/CodedException;

    move-object v0, p1

    check-cast v0, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v0}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p3, v0, v1, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 45
    :cond_2
    new-instance p3, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {p3, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p3, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_1

    .line 43
    :cond_3
    move-object p3, p1

    check-cast p3, Lexpo/modules/kotlin/exception/CodedException;

    .line 22
    :goto_1
    new-instance p1, Lexpo/modules/kotlin/exception/PropSetException;

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ComposeViewProp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-direct {p1, v0, p2, p3}, Lexpo/modules/kotlin/exception/PropSetException;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 40
    throw p1
.end method
