.class public Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;
.super Landroid/arch/lifecycle/MutableLiveData;
.source "DiffMutableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DiffMutableLiveData"


# instance fields
.field private isDeepEquals:Z

.field private mLastPostValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLastSetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->isDeepEquals:Z

    return-void
.end method

.method private deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 84
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private diffPost(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->TAG:Ljava/lang/String;

    const-string v3, "start diffPost..."

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->isDeepEquals:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->mLastPostValue:Ljava/lang/Object;

    .line 63
    invoke-direct {p0, v2, p1}, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->mLastPostValue:Ljava/lang/Object;

    .line 64
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    :goto_0
    sget-object p1, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diffPost1.cost = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_1
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "diffPost2.cost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->mLastPostValue:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method private diffSet(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->isDeepEquals:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->mLastSetValue:Ljava/lang/Object;

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->mLastSetValue:Ljava/lang/Object;

    .line 76
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 79
    :cond_1
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->mLastSetValue:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public postValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->diffPost(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    sget-object p1, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->TAG:Ljava/lang/String;

    const-string v0, "postValue() called with: value is seem"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 41
    :cond_0
    invoke-super {p0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setDeepEquals(Z)Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData<",
            "TT;>;"
        }
    .end annotation

    .line 55
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->isDeepEquals:Z

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->diffSet(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object p1, Lcom/alibaba/ailabs/genie/contacts/common/data/DiffMutableLiveData;->TAG:Ljava/lang/String;

    const-string v0, "setValue() called with: value is seem"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
