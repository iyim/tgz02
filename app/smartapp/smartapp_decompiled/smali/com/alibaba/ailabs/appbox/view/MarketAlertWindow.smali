.class public Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;
.super Ljava/lang/Object;
.source "MarketAlertWindow.java"


# instance fields
.field private isShown:Z

.field private marketWindowMgr:Landroid/view/WindowManager;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->marketWindowMgr:Landroid/view/WindowManager;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->isShown:Z

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->rootView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 93
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->isShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->marketWindowMgr:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->isShown:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->isShown:Z

    return v0
.end method

.method public setCloseView(Landroid/view/View;)V
    .locals 1

    .line 104
    new-instance v0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow$1;-><init>(Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->rootView:Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->rootView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 3

    .line 50
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "window"

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->marketWindowMgr:Landroid/view/WindowManager;

    .line 55
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7da

    .line 57
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x30700

    .line 67
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 69
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    .line 73
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 75
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 76
    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->isShown:Z

    if-eqz v1, :cond_1

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->marketWindowMgr:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->rootView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->marketWindowMgr:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->rootView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->isShown:Z

    return-void
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->marketWindowMgr:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->rootView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->isShown:Z

    return-void
.end method
