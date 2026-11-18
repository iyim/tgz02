.class public abstract Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WidgetUIBaseActivity.java"


# static fields
.field private static final DISABLE_EXPAND:I = 0x10000

.field private static final DISABLE_EXPAND_LOW:I = 0x1

.field private static final DISABLE_NONE:I = 0x0

.field private static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "WidgetUIBaseActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private banStatusBar()V
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;->setStatusBarDisable(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    .line 57
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;->setStatusBarDisable(I)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setStatusBarDisable(I)V
    .locals 7

    const-string v0, "statusbar"

    .line 78
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.StatusBarManager"

    .line 81
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "disable"

    const/4 v3, 0x1

    .line 82
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;->unBanStatusBar()V

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private slideUpToHome()V
    .locals 6

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string v0, "android.view.Window"

    .line 39
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPrivateFlags"

    const/4 v2, 0x1

    .line 40
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x10000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected enableSlideUpToHome()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;->enableSlideUpToHome()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;->slideUpToHome()V

    :cond_0
    return-void
.end method

.method public unBanStatusBar()V
    .locals 7

    const-string v0, "statusbar"

    .line 66
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widgetui/uiabstract/WidgetUIBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.StatusBarManager"

    .line 69
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "disable"

    const/4 v3, 0x1

    .line 70
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 71
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
