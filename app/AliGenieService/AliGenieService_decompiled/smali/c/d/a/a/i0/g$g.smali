.class public Lc/d/a/a/i0/g$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/a/i0/g;->a()V
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

    iput-object p1, p0, Lc/d/a/a/i0/g$g;->b:Lc/d/a/a/i0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/a/i0/g$g;->b:Lc/d/a/a/i0/g;

    iget-object p1, p1, Lc/d/a/a/i0/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lc/d/a/a/i0/g$g;->b:Lc/d/a/a/i0/g;

    invoke-static {v0, p1}, Lc/d/a/a/i0/g;->a(Lc/d/a/a/i0/g;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
