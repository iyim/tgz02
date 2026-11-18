.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmItem;
.super Ljava/lang/Object;
.source "AlarmItem.java"


# instance fields
.field private index:I

.field private repeat:Ljava/lang/String;

.field private ring:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmItem;->index:I

    .line 16
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmItem;->repeat:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmItem;->time:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmItem;->ring:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmItem;->index:I

    return v0
.end method

.method public getRepeat()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmItem;->repeat:Ljava/lang/String;

    return-object v0
.end method

.method public getRing()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmItem;->ring:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmItem;->time:Ljava/lang/String;

    return-object v0
.end method
