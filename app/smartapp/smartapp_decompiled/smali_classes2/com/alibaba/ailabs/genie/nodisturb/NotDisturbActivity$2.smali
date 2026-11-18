.class Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;
.super Ljava/lang/Object;
.source "NotDisturbActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->setOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string p1, "NotDisturbActivity"

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$000(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p2

    if-eq p1, p2, :cond_d

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$202(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)Z

    .line 202
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$300(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZZ)V

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$402(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_clicked_date"

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->putLongToDisturbModel(Landroid/content/Context;Ljava/lang/String;J)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->dndBtnClickedInTcmPeriod(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->setDndModeClosedByUser(Landroid/content/Context;Z)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "dnd_mode_enabled_manually"

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->putBooleanToDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "NotDisturbActivity"

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNDMode clicked, disturbEanbled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; current time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; time in millisecond="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 218
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/setting/R$string;->dnd_mode_tips_close:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 224
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/setting/R$string;->dnd_mode_tips_open:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 229
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p1

    const/16 v0, 0xc

    if-nez p1, :cond_8

    .line 231
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result p1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$700(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$900(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->beforeOrAfterTimeCycleModePeriod(IIII)I

    move-result p1

    .line 233
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v2

    .line 234
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$700(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v3

    if-nez p1, :cond_4

    const-string p1, "\u4eca\u5929"

    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    if-ne p1, p2, :cond_5

    .line 243
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, p2, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1000(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZI)V

    const-string p1, "\u660e\u5929"

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const-string p1, "\u660e\u5929"

    goto :goto_1

    :goto_2
    const-string v5, "\u4e0a\u5348"

    if-le v2, v0, :cond_6

    const-string v5, "\u4e0b\u5348"

    add-int/lit8 v2, v2, -0xc

    goto :goto_3

    :cond_6
    if-ne v2, v0, :cond_7

    const-string v5, "\u4e0b\u5348"

    .line 257
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    sget v7, Lcom/alibaba/ailabs/genie/setting/R$string;->dnd_mode_tips_close:I

    invoke-virtual {v6, v7}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5c06\u81ea\u52a8\u5f00\u542f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    move v1, v4

    goto/16 :goto_6

    .line 267
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result p1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$700(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$900(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->beforeOrAfterTimeCycleModePeriod(IIII)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    const-string p1, "\u660e\u5929"

    goto :goto_4

    :cond_9
    const-string p1, "NotDisturbActivity"

    const-string v2, "Current time is is in TCM period!"

    .line 274
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result p1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$700(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$900(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isLastToNextDay(IIII)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "\u660e\u5929"

    goto :goto_4

    :cond_a
    const-string p1, "\u4eca\u5929"

    .line 277
    :goto_4
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v2

    const-string v3, "\u4e0a\u5348"

    if-le v2, v0, :cond_b

    const-string v3, "\u4e0b\u5348"

    add-int/lit8 v2, v2, -0xc

    goto :goto_5

    :cond_b
    if-ne v2, v0, :cond_c

    const-string v3, "\u4e0b\u5348"

    .line 285
    :cond_c
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    sget v5, Lcom/alibaba/ailabs/genie/setting/R$string;->dnd_mode_tips_open:I

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$900(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u524d\u4fdd\u6301\u5f00\u542f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 292
    :goto_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)V

    .line 293
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)V

    .line 295
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->uploadDndModeInfo(Landroid/content/Context;)V

    const-string p1, "NotDisturbActivity"

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DNDMode clicked, update DND mode info to server. value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
