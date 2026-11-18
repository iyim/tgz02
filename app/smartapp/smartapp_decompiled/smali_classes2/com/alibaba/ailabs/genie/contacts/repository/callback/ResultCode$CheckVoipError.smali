.class public Lcom/alibaba/ailabs/genie/contacts/repository/callback/ResultCode$CheckVoipError;
.super Ljava/lang/Object;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/repository/callback/ResultCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckVoipError"
.end annotation


# static fields
.field public static final DISABLE_PSTN_CALL:I = 0x6d

.field public static final LOW_APP_VERSION:I = 0x6e

.field public static final NOT_AGREE_PROTOCOL:I = 0x65

.field public static final NOT_IN_CONTACTS:I = 0x67

.field public static final NOT_LOGIN:I = 0x6f

.field public static final NOT_REGISTER:I = 0x6c

.field public static final NOT_SET_ANSWER_DEVICE:I = 0x68

.field public static final NO_DEVICE:I = 0x19e

.field public static final PHONE_NUM_INVALID:I = 0x66

.field public static final PREVENT_CALLED:I = 0x6a

.field public static final REGISTER_ERROR:I = 0x70

.field public static final USER_IS_ON_PSTN_CALL:I = 0x69


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
