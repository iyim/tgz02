.class Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;
.super Ljava/lang/Object;
.source "AppTimeCount.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePackage(Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;)V
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppletCount"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "com.alipay.arome.app"

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6253\u5f00\u4e86apk\uff0crealPackageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "111"

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "222"

    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->setCurrentApp(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$100(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;->report(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$200(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Lcom/alibaba/ailabs/genie/studymode/StudyCheck;

    move-result-object v0

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->checkApp(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 97
    :cond_1
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6253\u5f00\u4e86\u5c0f\u7a0b\u5e8f\uff0cvirtualPackageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 102
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    const-string v5, "webapp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    :try_start_0
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v2, "genieAppId"

    .line 106
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "genieAppId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "uri\u91cc\u6ca1\u6709geneAppId\u5b57\u6bb5\uff0c\u53d6appId"

    .line 109
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "appId"

    .line 110
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_0

    :cond_2
    :try_start_2
    const-string p1, "uri is null"

    .line 114
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendErrorToWebGate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 117
    :goto_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendErrorToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_3
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/time/utils/DataUtils;->isDigital(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    .line 125
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "333"

    .line 126
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v4}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    :cond_5
    const-string p1, "444"

    .line 129
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 131
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-virtual {p1, v0, v3}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    .line 132
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$100(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;->report(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$200(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Lcom/alibaba/ailabs/genie/studymode/StudyCheck;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->checkApp(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->setCurrentApp(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "geneAppId is null"

    .line 136
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendErrorToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :cond_7
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->realPackageName:Ljava/lang/String;

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 141
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/utils/DataUtils;->isDigital(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 143
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    const-string v1, "com.alibaba.ailabs.genie.musicplayer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 144
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 145
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    .line 146
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->setCurrentApp(Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :cond_8
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->setCurrentApp(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method
