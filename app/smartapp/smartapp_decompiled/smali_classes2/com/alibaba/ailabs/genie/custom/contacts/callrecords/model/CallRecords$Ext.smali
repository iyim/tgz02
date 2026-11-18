.class public Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords$Ext;
.super Ljava/lang/Object;
.source "CallRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ext"
.end annotation


# instance fields
.field public invalid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isInvalid()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords$Ext;->invalid:Z

    return v0
.end method

.method public setInvalid(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords$Ext;->invalid:Z

    return-void
.end method
