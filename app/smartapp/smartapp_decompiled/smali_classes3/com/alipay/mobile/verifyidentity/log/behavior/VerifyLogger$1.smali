.class Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;
.super Ljava/lang/Object;
.source "VerifyLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)V
    .locals 1

    .line 124
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 127
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6838\u8eab\u57cb\u70b9\u5668\u542f\u52a8"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$200(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;

    .line 132
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string v6, "-"

    const-string v7, "-"

    iget-object v8, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    iget-object v9, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    invoke-static/range {v2 .. v9}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$300(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$400(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$502(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;I)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$600(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$500(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$600(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const-string v2, ","

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$700(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$800(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)V

    .line 147
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->reportDispersedLog(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v1

    const-string v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->addVerifyLogger(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    const-string v2, "verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 151
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string v2, "UC-MobileIC-150810-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$900(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)V

    .line 154
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getAndReportData()V

    .line 155
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string v6, "-"

    const-string v7, "-"

    iget-object v8, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    iget-object v9, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    invoke-static/range {v2 .. v9}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$300(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1000(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    monitor-exit p0

    goto/16 :goto_0

    .line 159
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1100(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto/16 :goto_1

    .line 162
    :cond_3
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string v2, "UC-MobileIC-170823-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    monitor-exit p0

    goto/16 :goto_0

    .line 164
    :cond_4
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string v2, "UC-MobileIC-150810-4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v3, "endSymbol"

    .line 166
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param2:Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1200(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)V

    .line 168
    iget-object v9, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v4, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string v5, "-"

    const-string v6, "-"

    iget-object v7, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    iget-object v8, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    invoke-static/range {v2 .. v8}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1300(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1400(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1500(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7ed3\u675f\u540e\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5220\u9664\u5bf9\u5e94\u6682\u7559\u65e5\u5fd7"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->getInstance()Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->remove(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->reportBehaviorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v1

    const-string v2, "verify"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->addVerifyLogger(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string v4, "-"

    const-string v5, "-"

    iget-object v6, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    invoke-static/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1300(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1000(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    monitor-exit p0

    goto/16 :goto_0

    .line 181
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1200(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1400(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_7
    :goto_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 187
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
