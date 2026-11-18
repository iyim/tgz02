.class public Lcom/aliyun/oss/model/LifecycleRule;
.super Ljava/lang/Object;
.source "LifecycleRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;,
        Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;,
        Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;
    }
.end annotation


# instance fields
.field private abortMultipartUpload:Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

.field private createdBeforeDate:Ljava/util/Date;

.field private expirationDays:I

.field private expirationTime:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

.field private storageTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    .line 162
    sget-object v0, Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;->Unknown:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    iput-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 166
    invoke-direct/range {v0 .. v6}, Lcom/aliyun/oss/model/LifecycleRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;Ljava/util/Date;Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 171
    invoke-direct/range {v0 .. v6}, Lcom/aliyun/oss/model/LifecycleRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;ILcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;ILcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;)V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    .line 181
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->id:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/aliyun/oss/model/LifecycleRule;->prefix:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lcom/aliyun/oss/model/LifecycleRule;->status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    .line 184
    iput p4, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationDays:I

    .line 185
    iput-object p5, p0, Lcom/aliyun/oss/model/LifecycleRule;->abortMultipartUpload:Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;ILcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;",
            "I",
            "Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    .line 221
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->id:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lcom/aliyun/oss/model/LifecycleRule;->prefix:Ljava/lang/String;

    .line 223
    iput-object p3, p0, Lcom/aliyun/oss/model/LifecycleRule;->status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    .line 224
    iput p4, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationDays:I

    .line 225
    iput-object p5, p0, Lcom/aliyun/oss/model/LifecycleRule;->abortMultipartUpload:Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    if-eqz p6, :cond_0

    .line 226
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;",
            "I",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    .line 199
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->id:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/aliyun/oss/model/LifecycleRule;->prefix:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/aliyun/oss/model/LifecycleRule;->status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    .line 202
    iput p4, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationDays:I

    if-eqz p5, :cond_0

    .line 203
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;Ljava/util/Date;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/aliyun/oss/model/LifecycleRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;Ljava/util/Date;Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;Ljava/util/Date;Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    .line 190
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->id:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/aliyun/oss/model/LifecycleRule;->prefix:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcom/aliyun/oss/model/LifecycleRule;->status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    .line 193
    iput-object p4, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationTime:Ljava/util/Date;

    .line 194
    iput-object p5, p0, Lcom/aliyun/oss/model/LifecycleRule;->abortMultipartUpload:Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;Ljava/util/Date;Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;",
            "Ljava/util/Date;",
            "Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;",
            ">;)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    .line 233
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->id:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/aliyun/oss/model/LifecycleRule;->prefix:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcom/aliyun/oss/model/LifecycleRule;->status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    .line 236
    iput-object p4, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationTime:Ljava/util/Date;

    .line 237
    iput-object p5, p0, Lcom/aliyun/oss/model/LifecycleRule;->abortMultipartUpload:Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    if-eqz p6, :cond_0

    .line 238
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;Ljava/util/Date;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    .line 210
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->id:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/aliyun/oss/model/LifecycleRule;->prefix:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lcom/aliyun/oss/model/LifecycleRule;->status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    .line 213
    iput-object p4, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationTime:Ljava/util/Date;

    if-eqz p5, :cond_0

    .line 214
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getAbortMultipartUpload()Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->abortMultipartUpload:Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    return-object v0
.end method

.method public getCreatedBeforeDate()Ljava/util/Date;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->createdBeforeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationDays()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationDays:I

    return v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getExpriationDays()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    iget v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationDays:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    return-object v0
.end method

.method public getStorageTransition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    return-object v0
.end method

.method public hasAbortMultipartUpload()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->abortMultipartUpload:Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCreatedBeforeDate()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->createdBeforeDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpirationDays()Z
    .locals 1

    .line 286
    iget v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpirationTime()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStorageTransition()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAbortMultipartUpload(Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->abortMultipartUpload:Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    return-void
.end method

.method public setCreatedBeforeDate(Ljava/util/Date;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->createdBeforeDate:Ljava/util/Date;

    return-void
.end method

.method public setExpirationDays(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationDays:I

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationTime:Ljava/util/Date;

    return-void
.end method

.method public setExpriationDays(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    iput p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->expirationDays:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->id:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->status:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    return-void
.end method

.method public setStorageTransition(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;",
            ">;)V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule;->storageTransitions:Ljava/util/List;

    return-void
.end method
