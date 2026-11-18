.class public Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;
.super Landroid/app/Activity;
.source "TemplateDownloadActivity.java"


# instance fields
.field mTextInfo:Landroid/widget/TextView;

.field templateUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->downloadTemplate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private downloadTemplate()V
    .locals 4

    .line 57
    new-instance v0, Lanetwork/channel/degrade/DegradableNetwork;

    invoke-direct {v0, p0}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v1, Lanetwork/channel/entity/RequestImpl;

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->templateUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 59
    invoke-interface {v0, v1, v2}, Lanetwork/channel/Network;->syncSend(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/Response;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lanetwork/channel/Response;->getStatusCode()I

    move-result v1

    .line 61
    invoke-interface {v0}, Lanetwork/channel/Response;->getBytedata()[B

    move-result-object v0

    .line 64
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "success"

    .line 68
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    if-eqz v2, :cond_2

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->mTextInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->templateUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u6a21\u677f\u4fe1\u606f\u83b7\u53d6\u6210\u529f, mock\u6a21\u677f\u66ff\u6362\u5b8c\u6210"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "data"

    .line 72
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    new-instance v1, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    invoke-direct {v1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;-><init>()V

    const-string v2, "templateId"

    .line 75
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->setTemplateId(Ljava/lang/String;)V

    const-string v2, "version"

    .line 76
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->setVersion(Ljava/lang/String;)V

    const-string v2, "scenario"

    .line 78
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "detail"

    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "detail2"

    .line 85
    :cond_1
    new-instance v3, Lcom/alibaba/android/ultron/engine/template/TemplateManager;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    sget-object v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 87
    invoke-virtual {v3, v1, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->saveFileCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;Lcom/alibaba/fastjson/JSONObject;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->mTextInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->mTextInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->mTextInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->templateUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u6a21\u677f\u4fe1\u606f\u83b7\u53d6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private initView()V
    .locals 1

    .line 39
    sget v0, Lcom/alibaba/android/ultron/vfw/R$id;->template_mock_info:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->mTextInfo:Landroid/widget/TextView;

    return-void
.end method

.method private loadData()V
    .locals 4

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->parseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->templateUrl:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->mTextInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->templateUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->mTextInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->templateUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u6a21\u677f\u4fe1\u606f\u83b7\u53d6\u4e2d..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->mTextInfo:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity$1;-><init>(Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private parseUrl()Ljava/lang/String;
    .locals 1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->finish()V

    return-void

    .line 33
    :cond_0
    sget p1, Lcom/alibaba/android/ultron/vfw/R$layout;->activity_template_mock:I

    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->initView()V

    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/TemplateDownloadActivity;->loadData()V

    return-void
.end method
