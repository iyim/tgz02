.class public final Lb/o/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/h;
.implements Lb/m/v;
.implements Lb/m/e;
.implements Lb/r/c;


# instance fields
.field public final b:Lb/o/i;

.field public c:Landroid/os/Bundle;

.field public final d:Lb/m/i;

.field public final e:Lb/r/b;

.field public final f:Ljava/util/UUID;

.field public g:Landroidx/lifecycle/Lifecycle$State;

.field public h:Landroidx/lifecycle/Lifecycle$State;

.field public i:Lb/o/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/o/i;Landroid/os/Bundle;Lb/m/h;Lb/o/f;)V
    .locals 8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lb/o/e;-><init>(Landroid/content/Context;Lb/o/i;Landroid/os/Bundle;Lb/m/h;Lb/o/f;Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/o/i;Landroid/os/Bundle;Lb/m/h;Lb/o/f;Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb/m/i;

    invoke-direct {p1, p0}, Lb/m/i;-><init>(Lb/m/h;)V

    iput-object p1, p0, Lb/o/e;->d:Lb/m/i;

    .line 1
    new-instance p1, Lb/r/b;

    invoke-direct {p1, p0}, Lb/r/b;-><init>(Lb/r/c;)V

    .line 2
    iput-object p1, p0, Lb/o/e;->e:Lb/r/b;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lb/o/e;->g:Landroidx/lifecycle/Lifecycle$State;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lb/o/e;->h:Landroidx/lifecycle/Lifecycle$State;

    iput-object p6, p0, Lb/o/e;->f:Ljava/util/UUID;

    iput-object p2, p0, Lb/o/e;->b:Lb/o/i;

    iput-object p3, p0, Lb/o/e;->c:Landroid/os/Bundle;

    iput-object p5, p0, Lb/o/e;->i:Lb/o/f;

    iget-object p1, p0, Lb/o/e;->e:Lb/r/b;

    invoke-virtual {p1, p7}, Lb/r/b;->a(Landroid/os/Bundle;)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    check-cast p1, Lb/m/i;

    .line 3
    iget-object p1, p1, Lb/m/i;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 4
    iput-object p1, p0, Lb/o/e;->g:Landroidx/lifecycle/Lifecycle$State;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Lb/o/e;->d:Lb/m/i;

    return-object v0
.end method

.method public a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_3
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    :goto_0
    iput-object p1, p0, Lb/o/e;->g:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Lb/o/e;->e()V

    return-void
.end method

.method public c()Lb/r/a;
    .locals 1

    iget-object v0, p0, Lb/o/e;->e:Lb/r/b;

    .line 1
    iget-object v0, v0, Lb/r/b;->b:Lb/r/a;

    return-object v0
.end method

.method public d()Lb/m/u;
    .locals 2

    iget-object v0, p0, Lb/o/e;->i:Lb/o/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/o/e;->f:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lb/o/f;->b(Ljava/util/UUID;)Lb/m/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lb/o/e;->g:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lb/o/e;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lb/o/e;->d:Lb/m/i;

    iget-object v1, p0, Lb/o/e;->g:Landroidx/lifecycle/Lifecycle$State;

    .line 1
    :goto_0
    invoke-virtual {v0, v1}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/o/e;->d:Lb/m/i;

    iget-object v1, p0, Lb/o/e;->h:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :goto_1
    return-void
.end method
