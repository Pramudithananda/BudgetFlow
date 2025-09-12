.class public Lcom/facebook/react/modules/dialog/AlertFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AlertFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final ARG_BUTTON_NEGATIVE:Ljava/lang/String; = "button_negative"

.field static final ARG_BUTTON_NEUTRAL:Ljava/lang/String; = "button_neutral"

.field static final ARG_BUTTON_POSITIVE:Ljava/lang/String; = "button_positive"

.field static final ARG_ITEMS:Ljava/lang/String; = "items"

.field static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field static final ARG_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private final mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/facebook/react/modules/dialog/AlertFragment;->mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/react/modules/dialog/AlertFragment;->mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;

    .line 41
    invoke-virtual {p0, p2}, Lcom/facebook/react/modules/dialog/AlertFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private static createAppCompatDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    .line 75
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "title"

    .line 76
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 78
    const-string v0, "button_positive"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    :cond_0
    const-string v0, "button_negative"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 84
    :cond_1
    const-string v0, "button_neutral"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 89
    :cond_2
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 92
    :cond_3
    const-string v0, "items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 96
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createAppDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.75.0"
    .end annotation

    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "title"

    .line 110
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 112
    const-string v0, "button_positive"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    :cond_0
    const-string v0, "button_negative"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    :cond_1
    const-string v0, "button_neutral"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    :cond_2
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    :cond_3
    const-string v0, "items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    :cond_4
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static createDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/facebook/react/modules/dialog/AlertFragment;->isAppCompatTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0, p1, p2}, Lcom/facebook/react/modules/dialog/AlertFragment;->createAppCompatDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/react/modules/dialog/AlertFragment;->createAppDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static isAppCompatTheme(Landroid/content/Context;)Z
    .locals 1

    .line 61
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 63
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    .line 65
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/AlertFragment;->mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/facebook/react/modules/dialog/AlertFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/react/modules/dialog/AlertFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/facebook/react/modules/dialog/AlertFragment;->createDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/AlertFragment;->mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
