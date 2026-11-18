.class Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;
.super Ljava/lang/Object;
.source "ApplistWithHeaderAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onConfirm()V
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder onConfirm position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",datas.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistWithHeaderAdapter-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$position:I

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDeleteType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 309
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->add2UninstalledList(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->add2UninstalledList(Ljava/lang/String;)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$100(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    goto :goto_0

    .line 319
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t delete this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$100(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    :cond_3
    :goto_0
    return-void
.end method
