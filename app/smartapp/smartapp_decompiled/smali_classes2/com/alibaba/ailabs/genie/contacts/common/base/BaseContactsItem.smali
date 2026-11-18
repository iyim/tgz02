.class public Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "BaseContactsItem.java"


# static fields
.field public static final DEVICE:I = 0x0

.field public static final FRIEND:I = 0x2

.field public static final MINE:I = 0x1


# instance fields
.field public model:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
