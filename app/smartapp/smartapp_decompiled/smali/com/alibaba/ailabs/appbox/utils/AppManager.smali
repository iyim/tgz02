.class public Lcom/alibaba/ailabs/appbox/utils/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppManager"

.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final instance:Lcom/alibaba/ailabs/appbox/utils/AppManager;


# instance fields
.field isActivityStarted:Z

.field progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

.field recommends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/utils/AppManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->instance:Lcom/alibaba/ailabs/appbox/utils/AppManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->isActivityStarted:Z

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->instance:Lcom/alibaba/ailabs/appbox/utils/AppManager;

    return-object v0
.end method


# virtual methods
.method public AppExit(Landroid/content/Context;)V
    .locals 1

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->finishAllActivity()V

    const-string v0, "activity"

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 133
    invoke-static {p1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public addActivity(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    .line 52
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->isActivityStarted:Z

    return-void
.end method

.method public currentActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 69
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public finishActivity()V
    .locals 1

    .line 77
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 89
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishAllActivity()V
    .locals 3

    .line 110
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 114
    sget-object v2, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 115
    sget-object v2, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_2
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public finishLoadingDialog()V
    .locals 2

    const-string v0, "AppManager"

    const-string v1, "finishLoadingDialog() called"

    .line 233
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->dismiss()V

    :cond_0
    return-void
.end method

.method public getRecommends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->recommends:Ljava/util/List;

    return-object v0
.end method

.method public initLoaddingDialog(Landroid/content/Context;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    :cond_0
    return-void
.end method

.method public isAnyActivityActive()Z
    .locals 1

    .line 122
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->activityStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAnyActivityStarted()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->isActivityStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRecommends(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;)V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->recommends:Ljava/util/List;

    return-void
.end method

.method public showAppInstalledDialog(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showAppInstalledDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized showDeleteGuide()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SDCardNotenough"

    const-string/jumbo v1, "showSDCardNotenoughDialogByBD"

    .line 170
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;-><init>()V

    .line 172
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showDeleteGuide(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SDCardNotenough"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSDCardNotenoughDialogByBD move:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;-><init>(Z)V

    .line 178
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showLoadingDialog(Landroid/content/Context;)V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showLoadingDialog() called with: context = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->setCancel(Z)V

    .line 216
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->show()V

    :cond_1
    return-void
.end method

.method public showLoadingDialog(Landroid/content/Context;Z)V
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showLoadingDialog() called with: context = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "],cancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->setCancel(Z)V

    .line 227
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/AppManager;->progressDialog:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->show()V

    :cond_1
    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 1

    .line 152
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->show()V

    return-void
.end method

.method public declared-synchronized showSDCardNotenoughDialog()V
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;-><init>()V

    .line 158
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showSDCardNotenoughDialogByBD()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SDCardNotenough"

    const-string/jumbo v1, "showSDCardNotenoughDialogByBD"

    .line 162
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;

    const-string/jumbo v1, "\u53ef\u7528\u7a7a\u95f4\u4e0d\u8db3"

    const-string/jumbo v2, "\u5f53\u524d\u8bbe\u5907\u7a7a\u95f4\u4e0d\u8db3\uff0c\u53ef\u80fd\u5f71\u54cd\u6b63\u5e38\u4f7f\u7528\uff0c\u60a8\u53ef\u4ee5\u5220\u9664\u5e94\u7528\uff0c\u6e05\u7406\u7a7a\u95f4"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
