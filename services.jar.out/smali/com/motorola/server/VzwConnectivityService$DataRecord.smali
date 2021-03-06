.class Lcom/motorola/server/VzwConnectivityService$DataRecord;
.super Ljava/lang/Object;
.source "VzwConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/VzwConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataRecord"
.end annotation


# instance fields
.field active:Z

.field baseRxBytes:J

.field baseTxBytes:J

.field iface:Ljava/lang/String;

.field sumRxBytes:J

.field sumTxBytes:J

.field final synthetic this$0:Lcom/motorola/server/VzwConnectivityService;


# direct methods
.method constructor <init>(Lcom/motorola/server/VzwConnectivityService;Ljava/lang/String;JJ)V
    .locals 5
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "baseRxBytes"    # J
    .param p5, "baseTxBytes"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 210
    iput-object p1, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->this$0:Lcom/motorola/server/VzwConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->iface:Ljava/lang/String;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->active:Z

    .line 213
    iput-wide p3, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    .line 214
    iput-wide p5, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    .line 215
    iput-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumRxBytes:J

    .line 216
    iput-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumTxBytes:J

    .line 217
    return-void
.end method


# virtual methods
.method public connectUpdate(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "disconRxBase"    # J
    .param p4, "disconTxBase"    # J

    .prologue
    .line 230
    iput-object p1, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->iface:Ljava/lang/String;

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->active:Z

    .line 232
    iput-wide p2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    .line 233
    iput-wide p4, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    .line 234
    return-void
.end method

.method public disconnectUpdate(Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "txBytes"    # J

    .prologue
    .line 238
    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    .line 239
    .local v2, "newBaseRxBytes":J
    iget-wide v4, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    .line 241
    .local v4, "newBaseTxBytes":J
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->active:Z

    .line 243
    iget-wide v6, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    cmp-long v1, p2, v6

    if-ltz v1, :cond_0

    .line 245
    iget-wide v6, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumRxBytes:J

    iget-wide v8, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumRxBytes:J

    .line 246
    move-wide v2, p2

    .line 248
    :cond_0
    iget-wide v6, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    cmp-long v1, p4, v6

    if-ltz v1, :cond_1

    .line 250
    iget-wide v6, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumTxBytes:J

    iget-wide v8, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    sub-long v8, p4, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumTxBytes:J

    .line 251
    move-wide v4, p4

    .line 255
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v0, "baseData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 258
    const/4 v1, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 259
    const-string v1, "VzwConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save reconnect base("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): rxBase="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", txBase="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->this$0:Lcom/motorola/server/VzwConnectivityService;

    # getter for: Lcom/motorola/server/VzwConnectivityService;->mIfaceLastDisconBase:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/motorola/server/VzwConnectivityService;->access$000(Lcom/motorola/server/VzwConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    iput-wide v6, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    .line 264
    return-void
.end method

.method public getIface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->iface:Ljava/lang/String;

    return-object v0
.end method

.method public getRxBytes()J
    .locals 6

    .prologue
    .line 267
    iget-boolean v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->active:Z

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->this$0:Lcom/motorola/server/VzwConnectivityService;

    iget-object v3, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->iface:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/motorola/server/VzwConnectivityService;->getProcTrafficBytes(Ljava/lang/String;I)J

    move-result-wide v0

    .line 269
    .local v0, "curRxBytes":J
    const-string v2, "VzwConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curRxBytes on iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 272
    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumRxBytes:J

    iget-wide v4, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    .line 278
    .end local v0    # "curRxBytes":J
    :goto_0
    return-wide v2

    .line 274
    .restart local v0    # "curRxBytes":J
    :cond_0
    const-string v2, "VzwConnectivityService"

    const-string v3, "ignore invalid traffic data on this active connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumRxBytes:J

    goto :goto_0

    .line 278
    .end local v0    # "curRxBytes":J
    :cond_1
    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumRxBytes:J

    goto :goto_0
.end method

.method public getTxBytes()J
    .locals 6

    .prologue
    .line 283
    iget-boolean v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->active:Z

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->this$0:Lcom/motorola/server/VzwConnectivityService;

    iget-object v3, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->iface:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/motorola/server/VzwConnectivityService;->getProcTrafficBytes(Ljava/lang/String;I)J

    move-result-wide v0

    .line 285
    .local v0, "curTxBytes":J
    const-string v2, "VzwConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curTxBytes on iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 288
    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumTxBytes:J

    iget-wide v4, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    .line 294
    .end local v0    # "curTxBytes":J
    :goto_0
    return-wide v2

    .line 290
    .restart local v0    # "curTxBytes":J
    :cond_0
    const-string v2, "VzwConnectivityService"

    const-string v3, "ignore invalid traffic data on this active connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumTxBytes:J

    goto :goto_0

    .line 294
    .end local v0    # "curTxBytes":J
    :cond_1
    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumTxBytes:J

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->active:Z

    return v0
.end method

.method public resetData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->active:Z

    .line 222
    iput-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    .line 223
    iput-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    .line 224
    iput-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumRxBytes:J

    .line 225
    iput-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumTxBytes:J

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sumRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumRxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sumTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->sumTxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseRxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/motorola/server/VzwConnectivityService$DataRecord;->baseTxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
