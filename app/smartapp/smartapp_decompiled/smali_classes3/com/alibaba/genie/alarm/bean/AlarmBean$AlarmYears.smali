.class public Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmYears;
.super Ljava/lang/Object;
.source "AlarmBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/bean/AlarmBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmYears"
.end annotation


# instance fields
.field private alarmMonths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmMonths;",
            ">;"
        }
    .end annotation
.end field

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlarmMonths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmMonths;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmYears;->alarmMonths:Ljava/util/List;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmYears;->year:I

    return v0
.end method

.method public setAlarmMonths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmMonths;",
            ">;)V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmYears;->alarmMonths:Ljava/util/List;

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmYears;->year:I

    return-void
.end method
