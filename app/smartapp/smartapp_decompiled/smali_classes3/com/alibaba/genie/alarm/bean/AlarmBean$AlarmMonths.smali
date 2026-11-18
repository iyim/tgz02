.class public Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmMonths;
.super Ljava/lang/Object;
.source "AlarmBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/bean/AlarmBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmMonths"
.end annotation


# instance fields
.field private daysOfMonth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private month:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDaysOfMonth()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmMonths;->daysOfMonth:Ljava/util/List;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmMonths;->month:I

    return v0
.end method

.method public setDaysOfMonth(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmMonths;->daysOfMonth:Ljava/util/List;

    return-void
.end method

.method public setMonth(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmMonths;->month:I

    return-void
.end method
