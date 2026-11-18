.class public Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;
.super Ljava/lang/Object;
.source "MtopSysNewDeviceIdRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field public API_NAME:Ljava/lang/String;

.field public NEED_ECODE:Z

.field public NEED_SESSION:Z

.field public VERSION:Ljava/lang/String;

.field public c0:Ljava/lang/String;

.field public c1:Ljava/lang/String;

.field public c2:Ljava/lang/String;

.field public c3:Ljava/lang/String;

.field public c4:Ljava/lang/String;

.field public c5:Ljava/lang/String;

.field public c6:Ljava/lang/String;

.field public device_global_id:Ljava/lang/String;

.field public new_device:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.sys.newDeviceId"

    .line 16
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "4.0"

    .line 21
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_ECODE:Z

    .line 31
    iput-boolean v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_SESSION:Z

    .line 35
    iput-boolean v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_device:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c6:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c5:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c4:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c3:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c1:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c2:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->device_global_id:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c0:Ljava/lang/String;

    return-void
.end method
