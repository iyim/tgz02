.class public final Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/f;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/Lifecycle;

.field public final synthetic b:Lb/r/a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lb/r/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Lb/r/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/m/h;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Landroidx/lifecycle/Lifecycle;

    check-cast p1, Lb/m/i;

    .line 1
    iget-object p1, p1, Lb/m/i;->a:Lb/c/a/b/a;

    invoke-virtual {p1, p0}, Lb/c/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Lb/r/a;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p1, p2}, Lb/r/a;->a(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
