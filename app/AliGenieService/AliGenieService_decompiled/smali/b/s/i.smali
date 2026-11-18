.class public Lb/s/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Ljava/lang/Runnable;


# direct methods
.method public static a(Landroid/view/ViewGroup;)Lb/s/i;
    .locals 1

    sget v0, Lb/s/g;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/s/i;

    return-object p0
.end method
