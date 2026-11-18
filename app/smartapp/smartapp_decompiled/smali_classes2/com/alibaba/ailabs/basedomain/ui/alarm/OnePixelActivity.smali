.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;
.super Landroid/app/Activity;
.source "OnePixelActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePixelActivity"

.field private static mOnePixelActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static finishActivity()V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishActivity mOnePixelActivity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;->mOnePixelActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePixelActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;->mOnePixelActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;->mOnePixelActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OnePixelActivity"

    :try_start_0
    const-string v1, "start  OnePixelActivity"

    .line 59
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "startActivity with err\uff1a"

    .line 64
    invoke-static {v0, v1, p0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x33

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 28
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 30
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x1

    .line 31
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 32
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string p1, "OnePixelActivity"

    const-string v0, "onCreate"

    .line 34
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sput-object p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;->mOnePixelActivity:Landroid/app/Activity;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "OnePixelActivity"

    const-string v1, "onDestroy"

    .line 54
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "OnePixelActivity"

    const-string v1, "onResume"

    .line 41
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
