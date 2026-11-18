.class public Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;
.super Ljava/lang/Object;
.source "WakeUpInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo$WakeUpType;
    }
.end annotation


# instance fields
.field public confidence:D

.field public ctx:Ljava/lang/String;

.field public doa:I

.field public recordId:Ljava/lang/String;

.field public type:I

.field public wakeupWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 184
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "LONG_RECORD"

    return-object p0

    :pswitch_2
    const-string p0, "FULL_DUPLEX_DIALOG"

    return-object p0

    :pswitch_3
    const-string p0, "GESTURE"

    return-object p0

    :pswitch_4
    const-string p0, "LOCAL_DIALOG"

    return-object p0

    :pswitch_5
    const-string p0, "APP"

    return-object p0

    :pswitch_6
    const-string p0, "FACE_RECOGNIZE"

    return-object p0

    :pswitch_7
    const-string p0, "CONTINUE_DIALOG"

    return-object p0

    :pswitch_8
    const-string p0, "TOUCH"

    return-object p0

    :pswitch_9
    const-string p0, "PRESS"

    return-object p0

    :pswitch_a
    const-string p0, "DOMAIN_DIRECT"

    return-object p0

    :pswitch_b
    const-string p0, "VOICE_MESSAGE"

    return-object p0

    :pswitch_c
    const-string p0, "SHORTCUT"

    return-object p0

    :pswitch_d
    const-string p0, "VOICEPRINT"

    return-object p0

    :pswitch_e
    const-string p0, "CLOUD"

    return-object p0

    :pswitch_f
    const-string p0, "CONTINUITY"

    return-object p0

    :pswitch_10
    const-string p0, "ACTIVE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getWakeupType(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method
