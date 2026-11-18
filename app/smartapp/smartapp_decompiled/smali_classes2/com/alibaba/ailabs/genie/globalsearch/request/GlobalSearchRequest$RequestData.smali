.class final Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$RequestData;
.super Ljava/lang/Object;
.source "GlobalSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RequestData"
.end annotation


# instance fields
.field public authInfo:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public utterance:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
