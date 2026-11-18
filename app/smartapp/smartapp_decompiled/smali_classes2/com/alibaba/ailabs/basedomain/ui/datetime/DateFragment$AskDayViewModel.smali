.class Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;
.super Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;
.source "DateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AskDayViewModel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;->this$0:Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;-><init>(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;)V

    return-void
.end method


# virtual methods
.method public getBig()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;->mDateTime:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getViewWeek()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmall1()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;->mDateTime:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->get24HourTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmall2()Ljava/lang/String;
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;->this$0:Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;->access$000(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;->mDateTime:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getViewFormattedSolarDate()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSmall3()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$AskDayViewModel;->mDateTime:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getFormattedLunarDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
