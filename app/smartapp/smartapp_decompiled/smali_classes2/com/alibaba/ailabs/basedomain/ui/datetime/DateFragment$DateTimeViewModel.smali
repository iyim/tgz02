.class abstract Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;
.super Ljava/lang/Object;
.source "DateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "DateTimeViewModel"
.end annotation


# instance fields
.field protected mDateTime:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->this$0:Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->mDateTime:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    return-void
.end method


# virtual methods
.method public abstract getBig()Ljava/lang/String;
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment$DateTimeViewModel;->mDateTime:Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSmall1()Ljava/lang/String;
.end method

.method public abstract getSmall2()Ljava/lang/String;
.end method

.method public abstract getSmall3()Ljava/lang/String;
.end method

.method public isAm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showAmPm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
