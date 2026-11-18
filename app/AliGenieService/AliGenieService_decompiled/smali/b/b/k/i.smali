.class public Lb/b/k/i;
.super Lb/k/d/c;
.source ""

# interfaces
.implements Lb/b/k/j;
.implements Lb/h/c/e$a;
.implements Lb/b/k/b;


# instance fields
.field public q:Lb/b/k/k;

.field public r:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/k/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/p/a$a;)Lb/b/p/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(Landroidx/appcompat/widget/Toolbar;)V
    .locals 4

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 1
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    .line 3
    instance-of v2, v1, Lb/b/k/v;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroid/view/MenuInflater;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lb/b/k/a;->f()V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lb/b/k/s;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->j()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-direct {v1, p1, v2, v3}, Lb/b/k/s;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    iget-object p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    .line 4
    iget-object v1, v1, Lb/b/k/s;->c:Landroid/view/Window$Callback;

    goto :goto_0

    .line 5
    :cond_2
    iput-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    iget-object p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b()V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/b/p/a;)V
    .locals 0

    return-void
.end method

.method public a(Lb/h/c/e;)V
    .locals 0

    invoke-virtual {p1, p0}, Lb/h/c/e;->a(Landroid/app/Activity;)Lb/h/c/e;

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/k/k;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Z

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->e()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/content/Context;I)I

    move-result v2

    sget-boolean v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1, v2, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_0
    move-object v5, p1

    check-cast v5, Landroid/view/ContextThemeWrapper;

    .line 2
    invoke-virtual {v5, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 3
    :catch_0
    :cond_0
    instance-of v3, p1, Lb/b/p/c;

    if-eqz v3, :cond_1

    invoke-virtual {v0, p1, v2, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_1
    move-object v5, p1

    check-cast v5, Lb/b/p/c;

    invoke-virtual {v5, v3}, Lb/b/p/c;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    :cond_1
    sget-boolean v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 4
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    const/4 v6, 0x0

    iput v6, v4, Landroid/content/res/Configuration;->fontScale:F

    if-eqz v5, :cond_19

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_0

    :cond_3
    iget v6, v3, Landroid/content/res/Configuration;->fontScale:F

    iget v7, v5, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    iput v7, v4, Landroid/content/res/Configuration;->fontScale:F

    :cond_4
    iget v6, v3, Landroid/content/res/Configuration;->mcc:I

    iget v7, v5, Landroid/content/res/Configuration;->mcc:I

    if-eq v6, v7, :cond_5

    iput v7, v4, Landroid/content/res/Configuration;->mcc:I

    :cond_5
    iget v6, v3, Landroid/content/res/Configuration;->mnc:I

    iget v7, v5, Landroid/content/res/Configuration;->mnc:I

    if-eq v6, v7, :cond_6

    iput v7, v4, Landroid/content/res/Configuration;->mnc:I

    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    iget-object v6, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v6, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 6
    :cond_7
    iget v6, v3, Landroid/content/res/Configuration;->touchscreen:I

    iget v7, v5, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v6, v7, :cond_8

    iput v7, v4, Landroid/content/res/Configuration;->touchscreen:I

    :cond_8
    iget v6, v3, Landroid/content/res/Configuration;->keyboard:I

    iget v7, v5, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v7, :cond_9

    iput v7, v4, Landroid/content/res/Configuration;->keyboard:I

    :cond_9
    iget v6, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v7, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v6, v7, :cond_a

    iput v7, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_a
    iget v6, v3, Landroid/content/res/Configuration;->navigation:I

    iget v7, v5, Landroid/content/res/Configuration;->navigation:I

    if-eq v6, v7, :cond_b

    iput v7, v4, Landroid/content/res/Configuration;->navigation:I

    :cond_b
    iget v6, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iget v7, v5, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v6, v7, :cond_c

    iput v7, v4, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_c
    iget v6, v3, Landroid/content/res/Configuration;->orientation:I

    iget v7, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v7, :cond_d

    iput v7, v4, Landroid/content/res/Configuration;->orientation:I

    :cond_d
    iget v6, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    if-eq v6, v7, :cond_e

    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_e
    iget v6, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0xc0

    if-eq v6, v7, :cond_f

    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_f
    iget v6, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    if-eq v6, v7, :cond_10

    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v6, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0x300

    if-eq v6, v7, :cond_11

    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    iget v6, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    iget v7, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0x3

    if-eq v6, v7, :cond_12

    iget v6, v4, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/res/Configuration;->colorMode:I

    :cond_12
    iget v6, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    iget v7, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0xc

    if-eq v6, v7, :cond_13

    iget v6, v4, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/res/Configuration;->colorMode:I

    .line 8
    :cond_13
    iget v6, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    iget v7, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0xf

    if-eq v6, v7, :cond_14

    iget v6, v4, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/res/Configuration;->uiMode:I

    :cond_14
    iget v6, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    iget v7, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    if-eq v6, v7, :cond_15

    iget v6, v4, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/res/Configuration;->uiMode:I

    :cond_15
    iget v6, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v6, v7, :cond_16

    iput v7, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_16
    iget v6, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v7, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v6, v7, :cond_17

    iput v7, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_17
    iget v6, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v7, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v6, v7, :cond_18

    iput v7, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_18
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v5, :cond_19

    iput v5, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 10
    :cond_19
    :goto_0
    invoke-virtual {v0, p1, v2, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v2, Lb/b/p/c;

    sget v3, Lb/b/i;->Theme_AppCompat_Empty:I

    invoke-direct {v2, p1, v3}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Lb/b/p/c;->a(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p1, :cond_1a

    move v0, v1

    :catch_2
    :cond_1a
    if-eqz v0, :cond_1c

    invoke-virtual {v2}, Lb/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1b

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    goto :goto_1

    .line 13
    :cond_1b
    invoke-static {p1}, Lb/h/d/b/f;->a(Landroid/content/res/Resources$Theme;)V

    :cond_1c
    :goto_1
    move-object p1, v2

    .line 14
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void

    :catch_3
    move-exception p1

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application failed to obtain resources from itself"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lb/b/p/a;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lb/b/k/i;->l()Lb/b/k/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/k/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Lb/b/k/i;->l()Lb/b/k/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lb/b/k/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lb/h/c/c;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public e()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 1
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->g()V

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 1
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroid/view/MenuInflater;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    new-instance v1, Lb/b/p/f;

    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lb/b/k/a;->d()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Lb/b/p/f;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lb/b/k/i;->r:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Lb/b/q/z0;->a()Z

    :cond_0
    iget-object v0, p0, Lb/b/k/i;->r:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/k/k;->b()V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/k/k;->b()V

    return-void
.end method

.method public k()Lb/b/k/k;
    .locals 1

    iget-object v0, p0, Lb/b/k/i;->q:Lb/b/k/k;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Lb/b/k/k;->a(Landroid/app/Activity;Lb/b/k/j;)Lb/b/k/k;

    move-result-object v0

    iput-object v0, p0, Lb/b/k/i;->q:Lb/b/k/k;

    :cond_0
    iget-object v0, p0, Lb/b/k/i;->q:Lb/b/k/k;

    return-object v0
.end method

.method public l()Lb/b/k/a;
    .locals 1

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 1
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    return-object v0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lb/k/d/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lb/b/k/i;->r:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lb/b/k/i;->r:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 1
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1, p1}, Lb/b/k/a;->a(Landroid/content/res/Configuration;)V

    :cond_1
    invoke-static {}, Lb/b/q/i;->a()Lb/b/q/i;

    move-result-object p1

    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lb/b/q/i;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Z)Z

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Lb/b/k/i;->o()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/k/k;->a()V

    invoke-virtual {v0, p1}, Lb/b/k/k;->a(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lb/k/d/c;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lb/k/d/c;->onDestroy()V

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/k/k;->c()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lb/k/d/c;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lb/b/k/i;->l()Lb/b/k/a;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb/b/k/a;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lb/b/k/i;->p()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lb/k/d/c;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->g()V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-super {p0}, Lb/k/d/c;->onPostResume()V

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 1
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lb/b/k/a;->c(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/k/d/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/k/k;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lb/k/d/c;->onStart()V

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d()Z

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lb/k/d/c;->onStop()V

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lb/b/k/a;->c(Z)V

    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/b/k/k;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lb/b/k/i;->l()Lb/b/k/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/k/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public p()Z
    .locals 2

    invoke-virtual {p0}, Lb/b/k/i;->e()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lb/b/k/i;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1
    new-instance v0, Lb/h/c/e;

    invoke-direct {v0, p0}, Lb/h/c/e;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, v0}, Lb/b/k/i;->a(Lb/h/c/e;)V

    invoke-virtual {p0}, Lb/b/k/i;->n()V

    invoke-virtual {v0}, Lb/h/c/e;->a()V

    :try_start_0
    invoke-static {p0}, Lb/h/c/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lb/b/k/i;->a(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/k/k;->b(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/k/k;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/k/k;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 1
    iput p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:I

    return-void
.end method
