.class public Lcom/alibaba/mbg/unet/internal/CookieInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation


# instance fields
.field public creationDate:J

.field public domain:Ljava/lang/String;

.field public expireDate:J

.field public isHttpOnly:Z

.field public isPersistent:Z

.field public lastAccessDate:J

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/CookieInfo;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/CookieInfo;->value:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/alibaba/mbg/unet/internal/CookieInfo;->path:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/alibaba/mbg/unet/internal/CookieInfo;->domain:Ljava/lang/String;

    .line 18
    iput-wide p5, p0, Lcom/alibaba/mbg/unet/internal/CookieInfo;->creationDate:J

    .line 19
    iput-wide p7, p0, Lcom/alibaba/mbg/unet/internal/CookieInfo;->lastAccessDate:J

    .line 20
    iput-wide p9, p0, Lcom/alibaba/mbg/unet/internal/CookieInfo;->expireDate:J

    .line 21
    iput-boolean p11, p0, Lcom/alibaba/mbg/unet/internal/CookieInfo;->isPersistent:Z

    .line 22
    iput-boolean p12, p0, Lcom/alibaba/mbg/unet/internal/CookieInfo;->isHttpOnly:Z

    return-void
.end method
