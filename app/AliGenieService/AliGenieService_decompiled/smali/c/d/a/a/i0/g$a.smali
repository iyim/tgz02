.class public Lc/d/a/a/i0/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/i0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/d/a/a/i0/g;


# direct methods
.method public constructor <init>(Lc/d/a/a/i0/g;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/i0/g$a;->b:Lc/d/a/a/i0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/a/i0/g$a;->b:Lc/d/a/a/i0/g;

    iget-object v0, p1, Lc/d/a/a/i0/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lc/d/a/a/i0/g;->a(Lc/d/a/a/i0/g;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    new-instance v0, Lc/d/a/a/i0/g$a$a;

    invoke-direct {v0, p0, p1}, Lc/d/a/a/i0/g$a$a;-><init>(Lc/d/a/a/i0/g$a;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
