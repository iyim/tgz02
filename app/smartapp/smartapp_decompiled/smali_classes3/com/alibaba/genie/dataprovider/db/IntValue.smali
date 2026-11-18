.class public Lcom/alibaba/genie/dataprovider/db/IntValue;
.super Ljava/lang/Object;
.source "IntValue.java"


# instance fields
.field private hashCodeOfKey:Ljava/lang/Integer;

.field private id:Ljava/lang/Long;

.field private key:Ljava/lang/String;

.field private value:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->id:Ljava/lang/Long;

    .line 36
    iput-object p2, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->hashCodeOfKey:Ljava/lang/Integer;

    .line 37
    iput-object p3, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->key:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->value:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->hashCodeOfKey:Ljava/lang/Integer;

    .line 24
    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->key:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->value:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getHashCodeOfKey()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->hashCodeOfKey:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public setHashCodeOfKey(Ljava/lang/Integer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->hashCodeOfKey:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->id:Ljava/lang/Long;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->value:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntValue{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/dataprovider/db/IntValue;->value:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
