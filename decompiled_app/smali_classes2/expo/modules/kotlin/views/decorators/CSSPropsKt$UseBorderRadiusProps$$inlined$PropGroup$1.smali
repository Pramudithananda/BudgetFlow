.class public final Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderRadiusProps$$inlined$PropGroup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseBorderRadiusProps(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder$PropGroup$2$1\n*L\n1#1,449:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\u0008\u0001\u0010\u0004\u0018\u0001\"\u0008\u0008\u0002\u0010\u0005*\u00020\u00032\u0006\u0010\u0006\u001a\u0002H\u00022\u0006\u0010\u0007\u001a\u0002H\u0004H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "ViewType",
        "Landroid/view/View;",
        "PropType",
        "T",
        "view",
        "prop",
        "invoke",
        "(Landroid/view/View;Ljava/lang/Object;)V",
        "expo/modules/kotlin/views/ViewDefinitionBuilder$PropGroup$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $body:Lkotlin/jvm/functions/Function3;

.field final synthetic $index:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderRadiusProps$$inlined$PropGroup$1;->$body:Lkotlin/jvm/functions/Function3;

    iput p2, p0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderRadiusProps$$inlined$PropGroup$1;->$index:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 150
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderRadiusProps$$inlined$PropGroup$1;->invoke(Landroid/view/View;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderRadiusProps$$inlined$PropGroup$1;->$body:Lkotlin/jvm/functions/Function3;

    iget v1, p0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderRadiusProps$$inlined$PropGroup$1;->$index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
