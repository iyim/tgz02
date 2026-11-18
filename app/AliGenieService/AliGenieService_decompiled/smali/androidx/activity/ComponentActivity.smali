.class public Landroidx/activity/ComponentActivity;
.super Lb/h/c/c;
.source ""

# interfaces
.implements Lb/m/h;
.implements Lb/m/v;
.implements Lb/m/e;
.implements Lb/r/c;
.implements Lb/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$b;
    }
.end annotation


# instance fields
.field public final c:Lb/m/i;

.field public final d:Lb/r/b;

.field public e:Lb/m/u;

.field public final f:Landroidx/activity/OnBackPressedDispatcher;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/h/c/c;-><init>()V

    new-instance v0, Lb/m/i;

    invoke-direct {v0, p0}, Lb/m/i;-><init>(Lb/m/h;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/m/i;

    .line 1
    new-instance v0, Lb/r/b;

    invoke-direct {v0, p0}, Lb/r/b;-><init>(Lb/r/c;)V

    .line 2
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/r/b;

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/activity/ComponentActivity$a;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$a;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lb/m/g;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lb/m/g;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a(Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/m/i;

    return-object v0
.end method

.method public final b()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final c()Lb/r/a;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/r/b;

    .line 1
    iget-object v0, v0, Lb/r/b;->b:Lb/r/a;

    return-object v0
.end method

.method public d()Lb/m/u;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/m/u;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/ComponentActivity$b;->a:Lb/m/u;

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/m/u;

    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/m/u;

    if-nez v0, :cond_1

    new-instance v0, Lb/m/u;

    invoke-direct {v0}, Lb/m/u;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/m/u;

    :cond_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/m/u;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/h/c/c;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/r/b;

    invoke-virtual {v0, p1}, Lb/r/b;->a(Landroid/os/Bundle;)V

    invoke-static {p0}, Lb/m/p;->a(Landroid/app/Activity;)V

    iget p1, p0, Landroidx/activity/ComponentActivity;->g:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->f()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/ComponentActivity;->e:Lb/m/u;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/ComponentActivity$b;

    if-eqz v2, :cond_0

    iget-object v1, v2, Landroidx/activity/ComponentActivity$b;->a:Lb/m/u;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Landroidx/activity/ComponentActivity$b;

    invoke-direct {v0}, Landroidx/activity/ComponentActivity$b;-><init>()V

    iput-object v1, v0, Landroidx/activity/ComponentActivity$b;->a:Lb/m/u;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    instance-of v1, v0, Lb/m/i;

    if-eqz v1, :cond_0

    check-cast v0, Lb/m/i;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 1
    invoke-virtual {v0, v1}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lb/h/c/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/r/b;

    .line 3
    iget-object v0, v0, Lb/r/b;->b:Lb/r/a;

    invoke-virtual {v0, p1}, Lb/r/a;->a(Landroid/os/Bundle;)V

    return-void
.end method
