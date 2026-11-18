.class public Lcom/aliyun/oss/internal/model/OSSErrorResult;
.super Ljava/lang/Object;
.source "OSSErrorResult.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlRootElement;
    name = "Error"
.end annotation


# instance fields
.field public Code:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        name = "Code"
    .end annotation
.end field

.field public Header:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        name = "Header"
    .end annotation
.end field

.field public HostId:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        name = "HostId"
    .end annotation
.end field

.field public Message:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        name = "Message"
    .end annotation
.end field

.field public Method:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        name = "Method"
    .end annotation
.end field

.field public RequestId:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        name = "RequestId"
    .end annotation
.end field

.field public ResourceType:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        name = "ResourceType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
