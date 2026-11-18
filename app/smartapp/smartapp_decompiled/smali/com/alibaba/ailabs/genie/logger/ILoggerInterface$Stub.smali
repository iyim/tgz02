.class public abstract Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;
.super Landroid/os/Binder;
.source "ILoggerInterface.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alibaba.ailabs.genie.logger.ILoggerInterface"

.field static final TRANSACTION_d:I = 0x2

.field static final TRANSACTION_dumpLogcat:I = 0xb

.field static final TRANSACTION_e:I = 0x5

.field static final TRANSACTION_i:I = 0x3

.field static final TRANSACTION_nodeTrace:I = 0x6

.field static final TRANSACTION_triggerPersist:I = 0x7

.field static final TRANSACTION_uploadDaysLog:I = 0xa

.field static final TRANSACTION_uploadTodayLog:I = 0x8

.field static final TRANSACTION_uploadYesterdayLog:I = 0x9

.field static final TRANSACTION_v:I = 0x1

.field static final TRANSACTION_w:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.alibaba.ailabs.genie.logger.ILoggerInterface"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.alibaba.ailabs.genie.logger.ILoggerInterface"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.alibaba.ailabs.genie.logger.ILoggerInterface"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 134
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->dumpLogcat(Ljava/lang/String;)V

    return v1

    .line 126
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->uploadDaysLog(I)V

    return v1

    .line 120
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->uploadYesterdayLog()V

    return v1

    .line 114
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->uploadTodayLog()V

    return v1

    .line 108
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->triggerPersist()V

    return v1

    .line 100
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->nodeTrace(Ljava/lang/String;)V

    return v1

    .line 90
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 80
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 70
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 60
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 50
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 45
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
