.class public Landroidx/navigation/fragment/DialogFragmentNavigator$a;
.super Lb/o/i;
.source ""

# interfaces
.implements Lb/o/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/DialogFragmentNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/o/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/q<",
            "+",
            "Landroidx/navigation/fragment/DialogFragmentNavigator$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/o/i;-><init>(Lb/o/q;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lb/o/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Lb/o/v/d;->DialogFragmentNavigator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lb/o/v/d;->DialogFragmentNavigator_android_name:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1
    iput-object p2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$a;->j:Ljava/lang/String;

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment class was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
