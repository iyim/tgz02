.class Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;
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

    .line 300
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    monitor-enter p0

    .line 304
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1300(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p2

    if-eq p1, p2, :cond_9

    .line 305
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$202(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)Z

    .line 306
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$502(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)Z

    .line 307
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1300(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const-string p1, "NotDisturbActivity"

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u66f4\u65b0\u65f6\u95f4\u8bbe\u7f6e disturbtimed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "disturb_timed"

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->putBooleanToDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 310
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$402(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Ljava/util/Date;)Ljava/util/Date;

    const-string v0, "NotDisturbActivity"

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Cycle mode clicked, current time="

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

    .line 313
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1400(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    .line 315
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 316
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, p2, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1000(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZI)V

    .line 317
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/setting/R$string;->dnd_mode_tips_keep_close:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/setting/R$string;->dnd_mode_tips_keep_open:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 330
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, v1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1000(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZI)V

    .line 332
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 335
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$700(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$900(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isInTimeCycleModePeriod(IIII)Z

    move-result p1

    if-nez p1, :cond_3

    .line 339
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    sget v0, Lcom/alibaba/ailabs/genie/setting/R$string;->dnd_mode_tips_close:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 344
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, v1, v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$300(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZZ)V

    .line 345
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    sget v0, Lcom/alibaba/ailabs/genie/setting/R$string;->dnd_mode_tips_open:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 350
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    sget v0, Lcom/alibaba/ailabs/genie/setting/R$string;->dnd_mode_tips_open:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 352
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v0

    const-string v2, "\u4e0a\u5348"

    const/16 v3, 0xc

    if-le v0, v3, :cond_5

    const-string v2, "\u4e0b\u5348"

    add-int/lit8 v0, v0, -0xc

    goto :goto_2

    :cond_5
    if-ne v0, v3, :cond_6

    const-string v2, "\u4e0b\u5348"

    .line 360
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v4

    const-string v5, "\u4e0a\u5348"

    if-le v4, v3, :cond_7

    const-string v5, "\u4e0b\u5348"

    add-int/lit8 v4, v4, -0xc

    goto :goto_3

    :cond_7
    if-ne v4, v3, :cond_8

    const-string v5, "\u4e0b\u5348"

    .line 368
    :cond_8
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$700(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$900(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u6bcf\u5929"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5c06\u81ea\u52a8\u5f00\u542f"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 371
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 376
    :goto_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)V

    .line 377
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)V

    .line 379
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->uploadDndModeInfo(Landroid/content/Context;)V

    const-string p1, "NotDisturbActivity"

    .line 380
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DNDMode Time Cycle Mode Btn clicked, update DND mode info to server. value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
